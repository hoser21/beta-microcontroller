// ---------------------------------------------------------------------
//    Module:     RAM Testbench
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schendel21@up.edu
//    Date:       04/11/2020
// ---------------------------------------------------------------------

`timescale 1ns / 1ns

module RAM_tb();

parameter MEMDEPTH = 256;
parameter DWIDTH = 32;
parameter AWIDTH = 8;

tri [DWIDTH-1:0] Data;
reg clk;
reg rdEn, wrEn; // active high enable, one-hot
reg [AWIDTH-1:0] Addr;
reg reset;

reg [DWIDTH-1:0] Payload;

// clock
always begin
    clk = 0;
    forever #10 clk = !clk;
end

assign Data = (wrEn) ? Payload : {DWIDTH{1'bz}};

RAM dut(Data, clk, rdEn, wrEn, reset, Addr);

initial begin
    // reset RAM
    reset = 1;
    #5 reset = 0;
    #5 reset = 1;

    // write to Addr 0
    Payload = $random; Addr = 8'h00; rdEn = 1'b0; wrEn = 1'b1;

    // write to Addr 1
    #20 Payload = $random; Addr = 8'h01; rdEn = 1'b0; wrEn = 1'b1;

    // read from Addr 0
    #20 Addr = 8'h00; rdEn = 1'b1; wrEn = 1'b0;

    // read from Addr 1
    #20 Addr = 8'h01; rdEn = 1'b1; wrEn = 1'b0;

    // do nothing
    #20 rdEn = 1'b0; wrEn = 1'b0;

    // read from Addr 0
    #20 Addr = 8'h00; rdEn = 1'b1; wrEn = 1'b0;

    // write to Addr 1
    #20 Payload = $random; Addr = 8'h01; rdEn = 1'b0; wrEn = 1'b1;

    // read from Addr 1
    #20 Addr = 8'h01; rdEn = 1'b1; wrEn = 1'b0;
end

endmodule