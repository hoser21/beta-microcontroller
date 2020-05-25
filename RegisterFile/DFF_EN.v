// ---------------------------------------------------------------------
//    Module:     D Flip-Flop with enable
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schendel21@up.edu
//    Date:       03/26/2020
// ---------------------------------------------------------------------

module DFF_EN(q, clk, d, reset, en);

output wire q;
input  d, clk, reset, en;

wire dp;

mux2_1 mux(dp, q, d, en);
DFF state(q, clk, dp, reset);

endmodule