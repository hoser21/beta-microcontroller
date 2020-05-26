// ---------------------------------------------------------------------
//    Module:     Testbench for 1-bit 5:32 Decoder
//    Author:     Alex Schendel and Kevin Hoser
//    Contact:    schendel21@up.edu and hoser21@up.edu
//    Date:       03/26/2020
// ---------------------------------------------------------------------

`timescale 1ns / 1ns

module test_decoder5_32;

reg [4:0] i;
reg en;
wire [31:0] d;

decoder5_32 dut(d, i, en);
initial
    begin
        i = 5'h00; en = 1'b1;
        #10 i = 5'h01;
        #10 i = 5'h02;
        #10 i = 5'h03;
        #10 i = 5'h04;
        #10 i = 5'h05;
        #10 i = 5'h06;
        #10 i = 5'h07;
        #10 i = 5'h08;
        #10 i = 5'h09;
        #10 i = 5'h0a;
        #10 i = 5'h0b;
        #10 i = 5'h0c;
        #10 i = 5'h0d;
        #10 i = 5'h0e;
        #10 i = 5'h0f;
        #10 i = 5'h10;
        #10 i = 5'h11;
        #10 i = 5'h12;
        #10 i = 5'h13;
        #10 i = 5'h14;
        #10 i = 5'h15;
        #10 i = 5'h16;
        #10 i = 5'h17;
        #10 i = 5'h18;
        #10 i = 5'h19;
        #10 i = 5'h1a;
        #10 i = 5'h1b;
        #10 i = 5'h1c;
        #10 i = 5'h1d;
        #10 i = 5'h1e;
        #10 i = 5'h1f;
        #10 en = 1'b0;
    end

endmodule  