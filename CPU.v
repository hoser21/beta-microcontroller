// ---------------------------------------------------------------------
//    Module:     32-bit CPU
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schendel21@up.edu
//    Date:       2/28/2020
// ---------------------------------------------------------------------

`include "header.vh"

module CPU;

parameter IWIDTH = 32;
parameter DWIDTH = 32;
parameter AWIDTH = 10;

reg clk;

// configure IR, MDR, MAR
reg [IWIDTH-1:0] IR;
reg [DWIDTH-1:0] MDR;
reg [AWIDTH-1:0] MAR;

wire [IWIDTH-1:0] IR_nxt;
wire [DWIDTH-1:0] MDR_nxt;
wire [AWIDTH-1:0] MAR_nxt;

`DFFE(IR, IR_nxt, 1'b1, 1'b1, clk);
`DFFE(MDR, MDR_nxt, 1'b1, 1'b1, clk);
`DFFE(MAR, MAR_nxt, 1'b1, 1'b1, clk);

// configure memory controller and RAM
tri [DWIDTH-1:0] Data_in, Data;

wire rdEn, wrEn;
wire [7:0] Addr;
wire Ready;

reg reset;
reg [15:0] Addr_in;
reg RW;
reg Valid;

assign Data_in = (~RW) ? MDR : {DWIDTH{1'bz}};

MemControl m_control(Data_in, Data, rdEn, wrEn, Addr, Ready, clk, MAR[7:0], RW, Valid);
RAM ram(Data, clk, rdEn, wrEn, reset, Addr);

// clock
always begin
    clk = 0;
    forever #10 clk = !clk;
end

endmodule