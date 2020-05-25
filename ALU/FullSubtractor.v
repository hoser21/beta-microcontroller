// ---------------------------------------------------------------------
//    Module:     1-bit Full Subtractor 
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schendel21@up.edu
//    Date:       02/27/2019
// ---------------------------------------------------------------------

module full_subtractor (bout, diff, p, g, x, y, bin);

output bout, diff, p ,g;
input x, y, bin;

wire x_not, p, g, p_not, p_prime;

not a1 (x_not, x);
and a2 (g, x_not, y);
xnor a3 (p, x, y);
not a4(p_not, p);
xor a5 (diff, p_not, bin);
and a6 (p_prime, p, bin);
or a7 (bout, p_prime, g);

endmodule