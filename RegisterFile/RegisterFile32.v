// ---------------------------------------------------------------------
//    Module:     32-bit Register 
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schedel21@up.edu
//    Date:       03/26/2020
// ---------------------------------------------------------------------


`timescale 1ns / 1ns

module registerFile32 (a, b, clk, d, w_sel, w_en, a_sel, b_sel);

output [31:0] a, b;
input [31:0] d;
input clk, w_en;
input [4:0] w_sel, a_sel, b_sel;

wire [31:0] q [31:0];
wire [31:0] en_int;

decoder5_32 enable_select (en_int, w_sel, w_en);
register32 reg0 (q[0], clk, d, en_int[0]);
register32 reg1 (q[1], clk, d, en_int[1]);
register32 reg2 (q[2], clk, d, en_int[2]);
register32 reg3 (q[3], clk, d, en_int[3]);
register32 reg4 (q[4], clk, d, en_int[4]);
register32 reg5 (q[5], clk, d, en_int[5]);
register32 reg6 (q[6], clk, d, en_int[6]);
register32 reg7 (q[7], clk, d, en_int[7]);
register32 reg8 (q[8], clk, d, en_int[8]);
register32 reg9 (q[9], clk, d, en_int[9]);
register32 reg10 (q[10], clk, d, en_int[10]);
register32 reg11 (q[11], clk, d, en_int[11]);
register32 reg12 (q[12], clk, d, en_int[12]);
register32 reg13 (q[13], clk, d, en_int[13]);
register32 reg14 (q[14], clk, d, en_int[14]);
register32 reg15 (q[15], clk, d, en_int[15]);
register32 reg16 (q[16], clk, d, en_int[16]);
register32 reg17 (q[17], clk, d, en_int[17]);
register32 reg18 (q[18], clk, d, en_int[18]);
register32 reg19 (q[19], clk, d, en_int[19]);
register32 reg20 (q[20], clk, d, en_int[20]);
register32 reg21 (q[21], clk, d, en_int[21]);
register32 reg22 (q[22], clk, d, en_int[22]);
register32 reg23 (q[23], clk, d, en_int[23]);
register32 reg24 (q[24], clk, d, en_int[24]);
register32 reg25 (q[25], clk, d, en_int[25]);
register32 reg26 (q[26], clk, d, en_int[26]);
register32 reg27 (q[27], clk, d, en_int[27]);
register32 reg28 (q[28], clk, d, en_int[28]);
register32 reg29 (q[29], clk, d, en_int[29]);
register32 reg30 (q[30], clk, d, en_int[30]);

mux32_32 muxA (a, q[0], q[1], q[2], q[3], q[4], q[5], q[6], q[7],
                    q[8], q[9], q[10], q[11], q[12], q[13], q[14], q[15],
                    q[16], q[17], q[18], q[19], q[20], q[21], q[22], q[23],
                    q[24], q[25], q[26], q[27], q[28], q[29], q[30], q[31], a_sel);
mux32_32 muxB (b, q[0], q[1], q[2], q[3], q[4], q[5], q[6], q[7],
                    q[8], q[9], q[10], q[11], q[12], q[13], q[14], q[15],
                    q[16], q[17], q[18], q[19], q[20], q[21], q[22], q[23],
                    q[24], q[25], q[26], q[27], q[28], q[29], q[30], q[31], b_sel);

assign q[31] = 1'b0;

endmodule