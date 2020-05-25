// ---------------------------------------------------------------------
//    Module:     32-bit Full Adder 
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schendel21@up.edu
//    Date:       2/27/2020
// ---------------------------------------------------------------------

module full_adder_32(cout, sum, a, b, cin);

output cout;
output [31:0] sum;
input [31:0] a, b;
input cin;
wire [31:0] p, g;
wire [31:0] p_prime;
wire [31:0] carry;

full_adder fa0(, sum[0], p[0], g[0], a[0], b[0], cin);
and(p_prime[0], p[0], cin);
or(carry[0], p_prime[0], g[0]);

full_adder fa1(, sum[1], p[1], g[1], a[1], b[1], carry[0]);
and(p_prime[1], p[1], carry[0]);
or(carry[1], p_prime[1], g[1]);

full_adder fa2(, sum[2], p[2], g[2], a[2], b[2], carry[1]);
and(p_prime[2], p[2], carry[1]);
or(carry[2], p_prime[2], g[2]);

full_adder fa3(, sum[3], p[3], g[3], a[3], b[3], carry[2]);
and(p_prime[3], p[3], carry[2]);
or(carry[3], p_prime[3], g[3]);

full_adder fa4(, sum[4], p[4], g[4], a[4], b[4], carry[3]);
and(p_prime[4], p[4], carry[3]);
or(carry[4], p_prime[4], g[4]);

full_adder fa5(, sum[5], p[5], g[5], a[5], b[5], carry[4]);
and(p_prime[5], p[5], carry[4]);
or(carry[5], p_prime[5], g[5]);

full_adder fa6(, sum[6], p[6], g[6], a[6], b[6], carry[5]);
and(p_prime[6], p[6], carry[5]);
or(carry[6], p_prime[6], g[6]);

full_adder fa7(, sum[7], p[7], g[7], a[7], b[7], carry[6]);
and(p_prime[7], p[7], carry[6]);
or(carry[7], p_prime[7], g[7]);

full_adder fa8(, sum[8], p[8], g[8], a[8], b[8], carry[7]);
and(p_prime[8], p[8], carry[7]);
or(carry[8], p_prime[8], g[8]);

full_adder fa9(, sum[9], p[9], g[9], a[9], b[9], carry[8]);
and(p_prime[9], p[9], carry[8]);
or(carry[9], p_prime[9], g[9]);

full_adder fa10(, sum[10], p[10], g[10], a[10], b[10], carry[9]);
and(p_prime[10], p[10], carry[9]);
or(carry[10], p_prime[10], g[10]);

full_adder fa11(, sum[11], p[11], g[11], a[11], b[11], carry[10]);
and(p_prime[11], p[11], carry[10]);
or(carry[11], p_prime[11], g[11]);

full_adder fa12(, sum[12], p[12], g[12], a[12], b[12], carry[11]);
and(p_prime[12], p[12], carry[11]);
or(carry[12], p_prime[12], g[12]);

full_adder fa13(, sum[13], p[13], g[13], a[13], b[13], carry[12]);
and(p_prime[13], p[13], carry[12]);
or(carry[13], p_prime[13], g[13]);

full_adder fa14(, sum[14], p[14], g[14], a[14], b[14], carry[13]);
and(p_prime[14], p[14], carry[13]);
or(carry[14], p_prime[14], g[14]);

full_adder fa15(, sum[15], p[15], g[15], a[15], b[15], carry[14]);
and(p_prime[15], p[15], carry[14]);
or(carry[15], p_prime[15], g[15]);

full_adder fa16(, sum[16], p[16], g[16], a[16], b[16], carry[15]);
and(p_prime[16], p[16], carry[15]);
or(carry[16], p_prime[16], g[16]);

full_adder fa17(, sum[17], p[17], g[17], a[17], b[17], carry[16]);
and(p_prime[17], p[17], carry[16]);
or(carry[17], p_prime[17], g[17]);

full_adder fa18(, sum[18], p[18], g[18], a[18], b[18], carry[17]);
and(p_prime[18], p[18], carry[17]);
or(carry[18], p_prime[18], g[18]);

full_adder fa19(, sum[19], p[19], g[19], a[19], b[19], carry[18]);
and(p_prime[19], p[19], carry[18]);
or(carry[19], p_prime[19], g[19]);

full_adder fa20(, sum[20], p[20], g[20], a[20], b[20], carry[19]);
and(p_prime[20], p[20], carry[19]);
or(carry[20], p_prime[20], g[20]);

full_adder fa21(, sum[21], p[21], g[21], a[21], b[21], carry[20]);
and(p_prime[21], p[21], carry[20]);
or(carry[21], p_prime[21], g[21]);

full_adder fa22(, sum[22], p[22], g[22], a[22], b[22], carry[21]);
and(p_prime[22], p[22], carry[21]);
or(carry[22], p_prime[22], g[22]);

full_adder fa23(, sum[23], p[23], g[23], a[23], b[23], carry[22]);
and(p_prime[23], p[23], carry[22]);
or(carry[23], p_prime[23], g[23]);

full_adder fa24(, sum[24], p[24], g[24], a[24], b[24], carry[23]);
and(p_prime[24], p[24], carry[23]);
or(carry[24], p_prime[24], g[24]);

full_adder fa25(, sum[25], p[25], g[25], a[25], b[25], carry[24]);
and(p_prime[25], p[25], carry[24]);
or(carry[25], p_prime[25], g[25]);

full_adder fa26(, sum[26], p[26], g[26], a[26], b[26], carry[25]);
and(p_prime[26], p[26], carry[25]);
or(carry[26], p_prime[26], g[26]);

full_adder fa27(, sum[27], p[27], g[27], a[27], b[27], carry[26]);
and(p_prime[27], p[27], carry[26]);
or(carry[27], p_prime[27], g[27]);

full_adder fa28(, sum[28], p[28], g[28], a[28], b[28], carry[27]);
and(p_prime[28], p[28], carry[27]);
or(carry[28], p_prime[28], g[28]);

full_adder fa29(, sum[29], p[29], g[29], a[29], b[29], carry[28]);
and(p_prime[29], p[29], carry[28]);
or(carry[29], p_prime[29], g[29]);

full_adder fa30(, sum[30], p[30], g[30], a[30], b[30], carry[29]);
and(p_prime[30], p[30], carry[29]);
or(carry[30], p_prime[30], g[30]);

full_adder fa31(, sum[31], p[31], g[31], a[31], b[31], carry[30]);
and(p_prime[31], p[31], carry[30]);
or(cout, p_prime[31], g[31]);

endmodule
