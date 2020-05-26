// ---------------------------------------------------------------------
//    Module:     1-bit 4:16 Decoder
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schedel21@up.edu
//    Date:       03/26/2020
// ---------------------------------------------------------------------


`timescale 1ns / 1ns

module decoder4_16 (d, i, en);

output [15:0] d;
input [3:0] i;
input en;

wire i3_not;
wire [15:0] e;

not a1(i3_not, i[3]);

decoder3_8 a2(e[7:0], i[2:0], i3_not);
decoder3_8 a3(e[15:8], i[2:0], i[3]);

and a4(d[0], e[0], en);
and a5(d[1], e[1], en);
and a6(d[2], e[2], en);
and a7(d[3], e[3], en);
and a8(d[4], e[4], en);
and a9(d[5], e[5], en);
and a10(d[6], e[6], en);
and a11(d[7], e[7], en);
and a12(d[8], e[8], en);
and a13(d[9], e[9], en);
and a14(d[10], e[10], en);
and a15(d[11], e[11], en);
and a16(d[12], e[12], en);
and a17(d[13], e[13], en);
and a18(d[14], e[14], en);
and a19(d[15], e[15], en);

endmodule