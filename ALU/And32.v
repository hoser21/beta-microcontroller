// ---------------------------------------------------------------------
//    Module:     32-bit And Gate
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schendel21@up.edu
//    Date:       2/27/2020
// ---------------------------------------------------------------------

module and32(out, a, b);

output [31:0] out;
input [31:0] a, b;

and g0(out[0], a[0], b[0]);
and g1(out[1], a[1], b[1]);
and g2(out[2], a[2], b[2]);
and g3(out[3], a[3], b[3]);
and g4(out[4], a[4], b[4]);
and g5(out[5], a[5], b[5]);
and g6(out[6], a[6], b[6]);
and g7(out[7], a[7], b[7]);
and g8(out[8], a[8], b[8]);
and g9(out[9], a[9], b[9]);
and g10(out[10], a[10], b[10]);
and g11(out[11], a[11], b[11]);
and g12(out[12], a[12], b[12]);
and g13(out[13], a[13], b[13]);
and g14(out[14], a[14], b[14]);
and g15(out[15], a[15], b[15]);
and g16(out[16], a[16], b[16]);
and g17(out[17], a[17], b[17]);
and g18(out[18], a[18], b[18]);
and g19(out[19], a[19], b[19]);
and g20(out[20], a[20], b[20]);
and g21(out[21], a[21], b[21]);
and g22(out[22], a[22], b[22]);
and g23(out[23], a[23], b[23]);
and g24(out[24], a[24], b[24]);
and g25(out[25], a[25], b[25]);
and g26(out[26], a[26], b[26]);
and g27(out[27], a[27], b[27]);
and g28(out[28], a[28], b[28]);
and g29(out[29], a[29], b[29]);
and g30(out[30], a[30], b[30]);
and g31(out[31], a[31], b[31]);
endmodule
