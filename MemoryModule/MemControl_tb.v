// ---------------------------------------------------------------------
//    Module:     Memory Controller Testbench
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schendel21@up.edu
//    Date:       04/09/2020
// ---------------------------------------------------------------------

`timescale 1ns / 1ns

module MemControl_tb();

parameter MEMDEPTH = 256;
parameter DWIDTH = 32;
parameter AWIDTH = 8;

// component variables
tri [DWIDTH-1:0] Data_in, Data;

wire rdEn, wrEn;
wire [AWIDTH-1:0] Addr;
wire Ready;

reg clk;
reg reset;
reg [AWIDTH-1:0] Addr_in;
reg RW;
reg Valid;

MemControl dut(Data_in, Data, rdEn, wrEn, Addr, Ready, clk, Addr_in, RW, Valid);
RAM ram(Data, clk, rdEn, wrEn, reset, Addr);

// clock
always begin
    clk = 0;
    forever #10 clk = !clk;
end

reg [DWIDTH-1:0] myData;

assign Data_in = (~RW) ? myData : {DWIDTH{1'bz}};

initial
begin
    // reset RAM
    reset = 1;
    #5 reset = 0;
    #5 reset = 1;

    // write to Addr 0
    myData = $random; Addr_in = 8'h0000; RW = 0; Valid = 1;
    wait(~Ready);
    wait(Ready);
    Valid = 0;

    // write to Addr 1
    #20 myData = $random; Addr_in = 8'h0001; RW = 0; Valid = 1;
    wait(~Ready);
    wait(Ready);
    Valid = 0;

    // write to Addr 2
    #20 myData = $random; Addr_in = 8'h0002; RW = 0; Valid = 1;
    wait(~Ready);
    wait(Ready);
    Valid = 0;

    // read from Addr 0
    #20 myData = {DWIDTH{1'bz}}; Addr_in = 8'h0000; RW = 1; Valid = 1;
    wait(~Ready);
    wait(Ready);
    Valid = 0;

    // read from Addr 2
    #20 myData = {DWIDTH{1'bz}}; Addr_in = 8'h0002; RW = 1; Valid = 1;
    wait(~Ready);
    wait(Ready);
    Valid = 0;

    // read from Addr 1
    #20 myData = {DWIDTH{1'bz}}; Addr_in = 8'h0001; RW = 1; Valid = 1;
    wait(~Ready);
    wait(Ready);
    Valid = 0;

    $stop;
end

endmodule