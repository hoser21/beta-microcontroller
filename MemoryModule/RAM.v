 // ---------------------------------------------------------------------
//    Module:     32-bit RAM
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schendel21@up.edu
//    Date:       04/09/2020
// ---------------------------------------------------------------------

`include "HEADER.vh"

module RAM(Data, clk, rdEn, wrEn, reset, Addr);

parameter MEMDEPTH = 256;
parameter DWIDTH = 32;
parameter AWIDTH = 8;

inout [DWIDTH-1:0] Data;
input clk;
input rdEn, wrEn; // active high enable, one-hot
input [AWIDTH-1:0] Addr;
input reset;

tri [DWIDTH-1:0] Data;
reg [DWIDTH-1:0] storage [MEMDEPTH-1:0];

integer i;

assign Data = (~wrEn && rdEn) ? storage[Addr] : {DWIDTH{1'bz}};

//Resets the entire RAM by iterating through the registers
always @(negedge reset) begin
    for (i = 0; i < MEMDEPTH; i = i + 1) begin
        storage[i] = 32'b0;
    end
end

//Initialize a DFF to set the data properly. See header.vh
`DFFE(storage[Addr], Data, wrEn, reset, clk)

// Inititalize RAM
initial begin
    // test 1
    /*storage[0] = 32'b11000000001111110000000000001010;
    storage[1] = 32'b11000000010000010000000000000101;
    storage[2] = 32'b10000000011000010001000000000000;
    storage[3] = 32'b01100100011111110000000010000000;
    storage[4] = 32'b01100100001111110000000010000001;
    storage[5] = 32'b01100000100111110000000010000001;*/
    
    // test 2
    storage[0] = 32'b11000000000111110000000000101000; 
    storage[1] = 32'b11000000001111110000000000000000;
    storage[2] = 32'b11000000010111110000000000000001;
    storage[3] = 32'b01110011111000000000000000000101;
    storage[4] = 32'b11000000011000010000000000000000;
    storage[5] = 32'b10000000001000010001000000000000;
    storage[6] = 32'b11000000010000110000000000000000;
    storage[7] = 32'b11000100000000000000000000000001;
    storage[8] = 32'b11000000100111110000000000000011;
    storage[9] = 32'b01101111111001000000000000000000;
end

endmodule