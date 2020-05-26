// ---------------------------------------------------------------------
//    Module:     1-bit 3:8 Decoder
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schedel21@up.edu
//    Date:       03/26/2020
// ---------------------------------------------------------------------


`timescale 1ns / 1ns

module decoder3_8 (d, i, en);

output [7:0] d;
input [2:0] i;
input en;

wire i2_not;
wire [7:0] e;

not a1(i2_not, i[2]);

decoder2_4 a2(e[3], e[2], e[1], e[0], i[1], i[0], i2_not);
decoder2_4 a3(e[7], e[6], e[5], e[4], i[1], i[0], i[2]);

and a4(d[0], e[0], en);
and a5(d[1], e[1], en);
and a6(d[2], e[2], en);
and a7(d[3], e[3], en);
and a8(d[4], e[4], en);
and a9(d[5], e[5], en);
and a10(d[6], e[6], en);
and a11(d[7], e[7], en);

endmodule