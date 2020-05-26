// ---------------------------------------------------------------------
//    Module:     1-bit 2:4 Decoder
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schedel21@up.edu
//    Date:       03/26/2020
// ---------------------------------------------------------------------


`timescale 1ns / 1ns

module decoder2_4 (d3, d2, d1, d0, i1, i0, en);

output d3, d2, d1, d0;
input i1, i0, en;

wire i1_not, i0_not;
wire e0, e1, e2, e3;

not a1(i1_not, i1);
not a2(i0_not, i0);
and a3(e0, i1_not, i0_not);
and a4(e1, i1_not, i0);
and a5(e2, i1, i0_not);
and a6(e3, i1, i0);
and a7(d0, e0, en);
and a8(d1, e1, en);
and a9(d2, e2, en);
and a10(d3, e3, en);

endmodule