// ---------------------------------------------------------------------
//    Module:     32-bit ALU
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schendel21@up.edu
//    Date:       2/28/2020
// ---------------------------------------------------------------------

module ALU(out, a, b, op);

output [31:0] out;
input [31:0] a, b;
input [3:0] op;

wire [31:0] add, sub, my_and, my_or, my_xor, my_xnor,
            my_shl, my_shr, my_sra, my_mult, my_div,
            my_lt, my_gt, my_eq;

full_adder_32 adder(, add, a, b, 1'b0);
full_subtractor_32 subber(, sub, a, b, 1'b0);
and32 ander(my_and, a, b);
or32 orer(my_or, a, b);
xor32 xorer(my_xor, a, b);
xnor32 xnorer(my_xnor, a, b);
shiftLeft32 shiftLefter(my_shl, a, b);
shiftRight32 shiftRighter(my_shr, a, b);
shiftRight32Arithmetic shiftRightAer(my_sra, a, b);
multiply_32 multiplierer(my_mult, a, b);
divide_32 dividerer(my_div, a, b);
comp_32 comparatorer(my_lt, my_eq, my_gt, a, b);

mux16_32 muxer(out, add, sub, my_mult, my_div, my_lt, my_eq, my_gt, ,
    my_and, my_or, my_xor, my_xnor, my_shl, my_shr, my_sra, , op);

endmodule
