// ---------------------------------------------------------------------
//    Module:     Testbench for 1-bit 5:32 Decoder
//    Author:     Alex Schendel and Kevin Hoser
//    Contact:    schendel21@up.edu and hoser21@up.edu
//    Date:       03/26/2020
// ---------------------------------------------------------------------

`timescale 1ns / 1ns

module test_decoder4_16;

reg [3:0] i;
reg en;
wire [16:0] d;

decoder4_16 dut(d, i, en);
initial
    begin
        i = 4'h0; en = 1'b1;
        #10 i = 4'h1;
        #10 i = 4'h2;
        #10 i = 4'h3;
        #10 i = 4'h4;
        #10 i = 4'h5;
        #10 i = 4'h6;
        #10 i = 4'h7;
        #10 i = 4'h8;
        #10 i = 4'h9;
        #10 i = 4'ha;
        #10 i = 4'hb;
        #10 i = 4'hc;
        #10 i = 4'hd;
        #10 i = 4'he;
        #10 i = 4'hf;
        #10 i = 4'h0;
        #10 en = 1'b0;
    end

endmodule  