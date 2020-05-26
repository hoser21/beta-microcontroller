// ---------------------------------------------------------------------
//    Module:     Testbench for 1-bit 3:8 Decoder
//    Author:     Alex Schendel and Kevin Hoser
//    Contact:    schendel21@up.edu and hoser21@up.edu
//    Date:       03/26/2020
// ---------------------------------------------------------------------

`timescale 1ns / 1ns

module test_decoder3_8;

reg [2:0] i;
reg en;
wire [7:0] d;

decoder3_8 dut(d, i, en);

initial
    begin
        i = 2'h0; en = 1'b1;
        #1 i = 2'h1;
        #1 i = 2'h2;
        #1 i = 2'h3;
        #1 i = 2'h4;
        #1 i = 2'h5;
        #1 i = 2'h6;
        #1 i = 2'h7;
        #1 en = 1'b0;
    end

endmodule  