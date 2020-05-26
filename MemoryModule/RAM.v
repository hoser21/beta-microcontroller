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
reg [DWIDTH-1:0] dataOut;
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
storage[0] = 32'b11000000001111110101000000000000;
storage[1] = 32'b11000000010000010000000000000101;
storage[2] = 32'b10000000011000010001000000000000;
storage[3] = 32'b01100100011111110000000010000000;
storage[4] = 32'b01100100001111110000000010000001;
storage[5] = 32'b01100000100111110000000010000001;

endmodule