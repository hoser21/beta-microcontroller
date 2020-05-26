// ---------------------------------------------------------------------
//    Module:     32-bit CPU
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schendel21@up.edu
//    Date:       2/28/2020
// ---------------------------------------------------------------------

`include "header.vh"

module CPU(runCPU, clk, reset);

parameter IWIDTH = 32;
parameter DWIDTH = 32;
parameter AWIDTH = 8;

input runCPU, clk, reset;

// configure PC, IR, MDR, MAR
reg [7:0] PC;
reg [IWIDTH-1:0] IR;
reg [DWIDTH-1:0] MDR;
reg [AWIDTH-1:0] MAR;

reg [7:0] PC_nxt;
reg [IWIDTH-1:0] IR_nxt;
reg [DWIDTH-1:0] MDR_nxt;
reg [AWIDTH-1:0] MAR_nxt;

`DFFE(PC, PC_nxt, 1'b1, 1'b1, clk)
`DFFE(IR, IR_nxt, 1'b1, 1'b1, clk)
`DFFE(MDR, MDR_nxt, 1'b1, 1'b1, clk)
`DFFE(MAR, MAR_nxt, 1'b1, 1'b1, clk)

// configure memory controller and RAM
tri [DWIDTH-1:0] Data_in, Data;

wire rdEn, wrEn;
wire [AWIDTH-1:0] Addr;
wire Ready;

reg RW;
reg Valid;

assign Data_in = (~RW) ? MDR : {DWIDTH{1'bz}};

MemControl m_control(Data_in, Data, rdEn, wrEn, Addr, Ready, clk, MAR[7:0], RW, Valid);
RAM ram(Data, clk, rdEn, wrEn, reset, Addr);


// configure alu
reg [3:0] opcode;
reg [DWIDTH-1:0] aluA, aluB;
wire [DWIDTH-1:0] aluOut;

ALU alu(aluOut, aluA, aluB, opcode);

// configure Register File
reg [DWIDTH-1:0] regFileData;
reg [4:0] aSel, bSel, wSel;
reg regFileWEn = 0;
wire [DWIDTH-1:0] aRegOut, bRegOut;

registerFile32 registerFile(aRegOut, bRegOut, clk, regFileData, wSel, regFileWEn, aSel, bSel);

// configure high-level fsm
typedef enum {IDLE, FETCH_MAR, FETCH_READ, FETCH_WAIT, PC_UPDATE, EXECUTE, EXECUTE_WAIT} state_cpu;

state_cpu this_state, next_state;

reg aluStart;
reg memStart;
reg pcStart;
reg executeDone;
reg memDone;
reg pcDone;

initial begin
    PC_nxt = 0;
    aluStart = 0;
    memStart = 0;
    pcStart = 0;
    executeDone = 0;
    memDone = 0;
    pcDone = 0;
end

always @(posedge clk, negedge reset) begin
    if (!reset) begin
        this_state = IDLE;
    end else begin
        this_state = next_state;
        
        case (this_state)

            IDLE: begin
                next_state = (runCPU) ? FETCH_MAR : IDLE;
                PC_nxt = PC;
                IR_nxt = IR;
                MDR_nxt = MDR;
                MAR_nxt = MAR;
                regFileWEn = 0;
            end

            FETCH_MAR: begin
                next_state = FETCH_READ;
                MAR_nxt = PC;    // change MAR to PC
                regFileWEn = 0;
            end

            FETCH_READ: begin
                next_state = FETCH_WAIT;
                MAR_nxt = MAR;
                RW = 1;         // Read the next instruction from the RAM
                Valid = 1;
            end

            FETCH_WAIT: begin
                next_state = (Ready) ? PC_UPDATE : FETCH_WAIT;
                Valid = 0;      // Wait for Memory to read the data and put it on the data line
            end

            PC_UPDATE: begin
                next_state = EXECUTE;
                PC_nxt = PC + 1;
                IR_nxt = Data_in;
            end

            EXECUTE: begin
                next_state = EXECUTE_WAIT;
                PC_nxt = PC;
                IR_nxt = IR;

                executeDone = 0;

                // determine instruction type
                if (IR[31]) begin
                    // arithmetic and logic
                    aluStart = 1;
                end else begin
                    if (IR[28:26] == 3'b000 | IR[28:26] == 3'b001) begin
                        // load/store
                        memStart = 1;
                    end else begin
                        // branch
                        pcStart = 0;
                    end
                end
            end

            EXECUTE_WAIT: begin
                next_state = (executeDone) ? FETCH_MAR : EXECUTE_WAIT;
                aluStart = 0;
                memStart = 0;
                pcStart = 0;
            end

            // DEFAULT: maintain current state
            default: begin
                next_state = this_state;
            end
        endcase
    end
end

// configure arithmetic and logic fsm
typedef enum {WAIT, S1, S2, S3, S4} state_execute;

state_execute this_state_alu, next_state_alu;

always @(posedge clk, negedge reset) begin
    if (!reset) begin
        this_state_alu = WAIT;
    end else begin
        this_state_alu = next_state_alu;
        
        case (this_state_alu)

            WAIT: begin
                next_state_alu = (aluStart) ? S1 : WAIT;
            end

            S1: begin
                next_state_alu = S2;

                regFileWEn = 0;
                opcode = IR[29:26];
                aSel = IR[20:16];
                aluA = aRegOut;
                
                // determine literal instruction and sign extend it
                if (IR[30]) begin
                    // sign extended literal
                    aluB = { {16{IR[15]}}, IR[15:0] };
                end else begin
                    bSel = IR[15:11];
                    aluB = bRegOut;
                end

                regFileData = aluOut;
                wSel = IR[25:21];
                regFileWEn = 1;
            end

            S2: begin
                next_state_alu = WAIT;

                regFileWEn = 0;
                executeDone = 1;
            end
            
            // DEFAULT: maintain current state
            default: begin
                next_state_alu = this_state_alu;
            end
        endcase
    end
end

// configure load and store fsm
state_execute this_state_mem, next_state_mem;

always @(posedge clk, negedge reset) begin
    if (!reset) begin
        this_state_mem = WAIT;
    end else begin
        this_state_mem = next_state_mem;
        
        case (this_state_mem)

            WAIT: begin
                next_state_mem = (memStart) ? S1 : WAIT;
            end

            S1: begin
                // calculate MAR and fetch values from register file
                next_state_mem = S2;

                regFileWEn = 0;
                opcode = 5'b11000;  // set ALU to ADDC to calulate literal offset

                aSel = IR[20:16];
                aluA = aRegOut;
                aluB = { {16{IR[15]}},IR[15:0] };
                MAR_nxt = aluOut;
                if (IR[26]) begin
                    // store
                    bSel = IR[25:21];
                    MDR_nxt = bRegOut;
                    RW = 0;
                end else begin
                    // load
                    RW = 1;
                end
            end

            S2: begin
                // Execute the load/store by validating the data with the RAM
                next_state_mem = S3;
                Valid = 1;
            end
                
            S3: begin
                // Wait for mem to finish command                  
                next_state_mem = (Ready) ? S4 : S3;
                Valid = 0;
            end
                
            S4: begin
                // Store is complete, Load requires moving data to Register File
                next_state_mem = WAIT;

                if (~IR[26]) begin
                    regFileData = Data_in;
                    regFileWEn = 1;
                    wSel = IR[25:21];
                end

                memDone = 1;
            end
            // DEFAULT: maintain current state
            default: begin
                next_state_mem = this_state_mem;
            end
        endcase
    end
end

// configure branch fsm
state_execute this_state_pc, next_state_pc;

always @(posedge clk, negedge reset) begin
    if (!reset) begin
        this_state_pc = WAIT;
    end else begin
        this_state_pc = next_state_pc;
        
        case (this_state_pc)

            WAIT: begin
                next_state_pc = WAIT;
            end
            
            // DEFAULT: maintain current state
            default: begin
                next_state_pc = this_state_pc;
            end
        endcase
    end
end

endmodule