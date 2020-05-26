// ---------------------------------------------------------------------
//    Module:     1-bit 5:32 Decoder
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schedel21@up.edu
//    Date:       03/26/2020
// ---------------------------------------------------------------------


`timescale 1ns / 1ns

module decoder5_32 (d, i, en);

output [31:0] d;
input [4:0] i;
input en;

wire i4_not;
wire [31:0] e;

not a1(i4_not, i[4]);

decoder4_16 a2(e[15:0], i[3:0], i4_not);
decoder4_16 a3(e[31:16], i[3:0], i[4]);

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

and a20(d[16], e[16], en);
and a21(d[17], e[17], en);
and a22(d[18], e[18], en);
and a23(d[19], e[19], en);
and a24(d[20], e[20], en);
and a25(d[21], e[21], en);
and a26(d[22], e[22], en);
and a27(d[23], e[23], en);
and a28(d[24], e[24], en);
and a29(d[25], e[25], en);
and a30(d[26], e[26], en);
and a31(d[27], e[27], en);
and a32(d[28], e[28], en);
and a33(d[29], e[29], en);
and a34(d[30], e[30], en);
and a35(d[31], e[31], en);

endmodule