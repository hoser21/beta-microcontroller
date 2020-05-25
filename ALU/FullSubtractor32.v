// ---------------------------------------------------------------------
//    Module:     32-bit Full Subtractor
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schendel21@up.edu
//    Date:       2/27/2020
// ---------------------------------------------------------------------

module full_subtractor_32(bout, diff, a, b, bin);

output bout;
output [31:0] diff;
input [31:0] a, b;
input bin;
wire [31:0] p, g;
wire [31:0] p_prime;
wire [31:0] borrow;

full_subtractor fs0(, diff[0], p[0], g[0], a[0], b[0], bin);
and(p_prime[0], p[0], bin);
or(borrow[0], p_prime[0], g[0]);
full_subtractor fs1(, diff[1], p[1], g[1], a[1], b[1], borrow[0]);
and(p_prime[1], p[1], borrow[0]);
or(borrow[1], p_prime[1], g[1]);
full_subtractor fs2(, diff[2], p[2], g[2], a[2], b[2], borrow[1]);
and(p_prime[2], p[2], borrow[1]);
or(borrow[2], p_prime[2], g[2]);
full_subtractor fs3(, diff[3], p[3], g[3], a[3], b[3], borrow[2]);
and(p_prime[3], p[3], borrow[2]);
or(borrow[3], p_prime[3], g[3]);
full_subtractor fs4(, diff[4], p[4], g[4], a[4], b[4], borrow[3]);
and(p_prime[4], p[4], borrow[3]);
or(borrow[4], p_prime[4], g[4]);
full_subtractor fs5(, diff[5], p[5], g[5], a[5], b[5], borrow[4]);
and(p_prime[5], p[5], borrow[4]);
or(borrow[5], p_prime[5], g[5]);
full_subtractor fs6(, diff[6], p[6], g[6], a[6], b[6], borrow[5]);
and(p_prime[6], p[6], borrow[5]);
or(borrow[6], p_prime[6], g[6]);
full_subtractor fs7(, diff[7], p[7], g[7], a[7], b[7], borrow[6]);
and(p_prime[7], p[7], borrow[6]);
or(borrow[7], p_prime[7], g[7]);
full_subtractor fs8(, diff[8], p[8], g[8], a[8], b[8], borrow[7]);
and(p_prime[8], p[8], borrow[7]);
or(borrow[8], p_prime[8], g[8]);
full_subtractor fs9(, diff[9], p[9], g[9], a[9], b[9], borrow[8]);
and(p_prime[9], p[9], borrow[8]);
or(borrow[9], p_prime[9], g[9]);
full_subtractor fs10(, diff[10], p[10], g[10], a[10], b[10], borrow[9]);
and(p_prime[10], p[10], borrow[9]);
or(borrow[10], p_prime[10], g[10]);
full_subtractor fs11(, diff[11], p[11], g[11], a[11], b[11], borrow[10]);
and(p_prime[11], p[11], borrow[10]);
or(borrow[11], p_prime[11], g[11]);
full_subtractor fs12(, diff[12], p[12], g[12], a[12], b[12], borrow[11]);
and(p_prime[12], p[12], borrow[11]);
or(borrow[12], p_prime[12], g[12]);
full_subtractor fs13(, diff[13], p[13], g[13], a[13], b[13], borrow[12]);
and(p_prime[13], p[13], borrow[12]);
or(borrow[13], p_prime[13], g[13]);
full_subtractor fs14(, diff[14], p[14], g[14], a[14], b[14], borrow[13]);
and(p_prime[14], p[14], borrow[13]);
or(borrow[14], p_prime[14], g[14]);
full_subtractor fs15(, diff[15], p[15], g[15], a[15], b[15], borrow[14]);
and(p_prime[15], p[15], borrow[14]);
or(borrow[15], p_prime[15], g[15]);
full_subtractor fs16(, diff[16], p[16], g[16], a[16], b[16], borrow[15]);
and(p_prime[16], p[16], borrow[15]);
or(borrow[16], p_prime[16], g[16]);
full_subtractor fs17(, diff[17], p[17], g[17], a[17], b[17], borrow[16]);
and(p_prime[17], p[17], borrow[16]);
or(borrow[17], p_prime[17], g[17]);
full_subtractor fs18(, diff[18], p[18], g[18], a[18], b[18], borrow[17]);
and(p_prime[18], p[18], borrow[17]);
or(borrow[18], p_prime[18], g[18]);
full_subtractor fs19(, diff[19], p[19], g[19], a[19], b[19], borrow[18]);
and(p_prime[19], p[19], borrow[18]);
or(borrow[19], p_prime[19], g[19]);
full_subtractor fs20(, diff[20], p[20], g[20], a[20], b[20], borrow[19]);
and(p_prime[20], p[20], borrow[19]);
or(borrow[20], p_prime[20], g[20]);
full_subtractor fs21(, diff[21], p[21], g[21], a[21], b[21], borrow[20]);
and(p_prime[21], p[21], borrow[20]);
or(borrow[21], p_prime[21], g[21]);
full_subtractor fs22(, diff[22], p[22], g[22], a[22], b[22], borrow[21]);
and(p_prime[22], p[22], borrow[21]);
or(borrow[22], p_prime[22], g[22]);
full_subtractor fs23(, diff[23], p[23], g[23], a[23], b[23], borrow[22]);
and(p_prime[23], p[23], borrow[22]);
or(borrow[23], p_prime[23], g[23]);
full_subtractor fs24(, diff[24], p[24], g[24], a[24], b[24], borrow[23]);
and(p_prime[24], p[24], borrow[23]);
or(borrow[24], p_prime[24], g[24]);
full_subtractor fs25(, diff[25], p[25], g[25], a[25], b[25], borrow[24]);
and(p_prime[25], p[25], borrow[24]);
or(borrow[25], p_prime[25], g[25]);
full_subtractor fs26(, diff[26], p[26], g[26], a[26], b[26], borrow[25]);
and(p_prime[26], p[26], borrow[25]);
or(borrow[26], p_prime[26], g[26]);
full_subtractor fs27(, diff[27], p[27], g[27], a[27], b[27], borrow[26]);
and(p_prime[27], p[27], borrow[26]);
or(borrow[27], p_prime[27], g[27]);
full_subtractor fs28(, diff[28], p[28], g[28], a[28], b[28], borrow[27]);
and(p_prime[28], p[28], borrow[27]);
or(borrow[28], p_prime[28], g[28]);
full_subtractor fs29(, diff[29], p[29], g[29], a[29], b[29], borrow[28]);
and(p_prime[29], p[29], borrow[28]);
or(borrow[29], p_prime[29], g[29]);
full_subtractor fs30(, diff[30], p[30], g[30], a[30], b[30], borrow[29]);
and(p_prime[30], p[30], borrow[29]);
or(borrow[30], p_prime[30], g[30]);
full_subtractor fs31(, diff[31], p[31], g[31], a[31], b[31], borrow[30]);
and(p_prime[31], p[31], borrow[30]);
or(bout, p_prime[31], g[31]);

endmodule
