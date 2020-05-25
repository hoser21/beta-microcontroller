// ---------------------------------------------------------------------
//    Module:     1-bit Full Adder 
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schendel21@up.edu
//    Date:       02/27/2019
// ---------------------------------------------------------------------

module full_adder (cout, sum, p, g, a, b, cin);

output cout, sum, p, g;
input a, b, cin;

wire p, g, p_prime;

xor a1 (sum, a, b, cin);
xor a2 (p, a, b);
and a3 (g, a, b);
and a4 (p_prime, p, cin);
or a5 (cout, g, p_prime);

endmodule