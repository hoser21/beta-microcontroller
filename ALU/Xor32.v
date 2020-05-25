// ---------------------------------------------------------------------
//    Module:     32-bit xor Gate
//    Authxor:     Kevin Hoser xor Alex Schendel
//    Contact:    hoser21@up.edu xor schendel21@up.edu
//    Date:       2/27/2020
// ---------------------------------------------------------------------

module xor32(out, a, b);

output [31:0] out;
input [31:0] a, b;

xor g0(out[0], a[0], b[0]);
xor g1(out[1], a[1], b[1]);
xor g2(out[2], a[2], b[2]);
xor g3(out[3], a[3], b[3]);
xor g4(out[4], a[4], b[4]);
xor g5(out[5], a[5], b[5]);
xor g6(out[6], a[6], b[6]);
xor g7(out[7], a[7], b[7]);
xor g8(out[8], a[8], b[8]);
xor g9(out[9], a[9], b[9]);
xor g10(out[10], a[10], b[10]);
xor g11(out[11], a[11], b[11]);
xor g12(out[12], a[12], b[12]);
xor g13(out[13], a[13], b[13]);
xor g14(out[14], a[14], b[14]);
xor g15(out[15], a[15], b[15]);
xor g16(out[16], a[16], b[16]);
xor g17(out[17], a[17], b[17]);
xor g18(out[18], a[18], b[18]);
xor g19(out[19], a[19], b[19]);
xor g20(out[20], a[20], b[20]);
xor g21(out[21], a[21], b[21]);
xor g22(out[22], a[22], b[22]);
xor g23(out[23], a[23], b[23]);
xor g24(out[24], a[24], b[24]);
xor g25(out[25], a[25], b[25]);
xor g26(out[26], a[26], b[26]);
xor g27(out[27], a[27], b[27]);
xor g28(out[28], a[28], b[28]);
xor g29(out[29], a[29], b[29]);
xor g30(out[30], a[30], b[30]);
xor g31(out[31], a[31], b[31]);
endmodule
