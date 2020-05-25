// ---------------------------------------------------------------------
//    Module:     32-bit xnor Gate
//    Authxnor:     Kevin Hoser xnor Alex Schendel
//    Contact:    hoser21@up.edu xnor schendel21@up.edu
//    Date:       2/27/2020
// ---------------------------------------------------------------------

module xnor32(out, a, b);

output [31:0] out;
input [31:0] a, b;

xnor g0(out[0], a[0], b[0]);
xnor g1(out[1], a[1], b[1]);
xnor g2(out[2], a[2], b[2]);
xnor g3(out[3], a[3], b[3]);
xnor g4(out[4], a[4], b[4]);
xnor g5(out[5], a[5], b[5]);
xnor g6(out[6], a[6], b[6]);
xnor g7(out[7], a[7], b[7]);
xnor g8(out[8], a[8], b[8]);
xnor g9(out[9], a[9], b[9]);
xnor g10(out[10], a[10], b[10]);
xnor g11(out[11], a[11], b[11]);
xnor g12(out[12], a[12], b[12]);
xnor g13(out[13], a[13], b[13]);
xnor g14(out[14], a[14], b[14]);
xnor g15(out[15], a[15], b[15]);
xnor g16(out[16], a[16], b[16]);
xnor g17(out[17], a[17], b[17]);
xnor g18(out[18], a[18], b[18]);
xnor g19(out[19], a[19], b[19]);
xnor g20(out[20], a[20], b[20]);
xnor g21(out[21], a[21], b[21]);
xnor g22(out[22], a[22], b[22]);
xnor g23(out[23], a[23], b[23]);
xnor g24(out[24], a[24], b[24]);
xnor g25(out[25], a[25], b[25]);
xnor g26(out[26], a[26], b[26]);
xnor g27(out[27], a[27], b[27]);
xnor g28(out[28], a[28], b[28]);
xnor g29(out[29], a[29], b[29]);
xnor g30(out[30], a[30], b[30]);
xnor g31(out[31], a[31], b[31]);
endmodule
