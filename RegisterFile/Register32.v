// ---------------------------------------------------------------------
//    Module:     32-bit Register 
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schedel21@up.edu
//    Date:       03/26/2020
// ---------------------------------------------------------------------


`timescale 1ns / 1ns

module register32 (q, clk, d, en);

output [31:0] q;
input [31:0] d;
input clk, en;

DFF_EN d1[31:0] (q, clk, d, , en);

endmodule