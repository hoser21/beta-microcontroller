// ---------------------------------------------------------------------
//    Module:     CPU Controller
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schendel21@up.edu
//    Date:       05/08/2020
// ---------------------------------------------------------------------

module CPUController(clk, reset);

typedef enum {FETCH, PC_UPDATE, DECODE, MEM_READ, EXECUTE, MEM_WRITE} state_cpu;

state_cpu this_state, next_state;

always @(posedge clk, negedge reset) begin
    if (!reset) begin
        this_state = FETCH;
    end else begin
        this_state = next_state;
        
        case (this_state) begin

            FETCH: begin
                next_state = PC_UPDATE;
            end

            PC_UPDATE: begin
                next_state = DECODE;
            end

            DECODE: begin
                next_state = MEM_READ;
            end

            MEM_READ: begin
                next_state = EXECUTE;
            end

            EXECUTE: begin
                next_state = MEM_WRITE;
            end

            MEM_WRITE: begin
                next_state = FETCH;
            end

            // DEFAULT: maintain current state
            DEFAULT: begin
                next_state = this_state;
            end
        end
    end
end


endmodule
