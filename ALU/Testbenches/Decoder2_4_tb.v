// ---------------------------------------------------------------------
//    Module:     Testbench for 1-bit 2:4 Decoder
//    Author:     Alex Schendel and Kevin Hoser
//    Contact:    schendel21@up.edu and hoser21@up.edu
//    Date:       03/26/2020
// ---------------------------------------------------------------------

`timescale 1ns / 1ns

module test_decoder2_4;

reg [1:0] i;
reg en;
wire [3:0] d;

decoder2_4 dut(d[3], d[2], d[1], d[0], i[1], i[0], en);
initial
    begin
        i = 2'h0; en = 1'b1;
        #10 i = 2'h1;
        #10 i = 2'h2;
        #10 i = 2'h3;
        #10 en = 1'b0;
    end

endmodule  