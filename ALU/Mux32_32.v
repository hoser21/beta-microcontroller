// ---------------------------------------------------------------------
//    Module:     32-bit 32:1 Mux
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schedel21@up.edu
//    Date:       03/27/2020
// ---------------------------------------------------------------------


`timescale 1ns / 1ns

module mux32_32 (z, i0, i1, i2, i3, i4, i5, i6, i7, 
                    i8, i9, i10, i11, i12, i13, i14, i15,
                    i16, i17, i18, i19, i20, i21, i22, i23, 
                    i24, i25, i26, i27, i28, i29, i30, i31, s);

output [31:0] z;
input [31:0] i0, i1, i2, i3, i4, i5, i6, i7, 
             i8, i9, i10, i11, i12, i13, i14, i15,
             i16, i17, i18, i19, i20, i21, i22, i23, 
             i24, i25, i26, i27, i28, i29, i30, i31;
input [4:0] s;

wire [31:0] a, b;

mux16_32 a1(a, i0, i1, i2, i3, i4, i5, i6, i7, 
               i8, i9, i10, i11, i12, i13, i14, i15, s[3:0]);
mux16_32 a2(b, i16, i17, i18, i19, i20, i21, i22, i23, 
               i24, i25, i26, i27, i28, i29, i30, i31, s[3:0]);
mux2_32 a3(z, a, b, s[4]);

endmodule