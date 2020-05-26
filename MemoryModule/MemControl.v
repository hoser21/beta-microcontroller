 // ---------------------------------------------------------------------
//    Module:     Memory Controller
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schendel21@up.edu
//    Date:       04/09/2020
// ---------------------------------------------------------------------

module MemControl(Data_in, Data, rdEn, wrEn, Addr, Ready, clk, Addr_in, RW, Valid);

parameter MEMDEPTH = 256;
parameter DWIDTH = 32;
parameter AWIDTH = 8;

inout Data_in;
inout Data;

output rdEn;
output reg wrEn;
output reg [AWIDTH-1:0] Addr;
output reg Ready;

input clk;
input [AWIDTH-1:0] Addr_in;
input RW;
input Valid;

tri [DWIDTH-1:0] Data_in, Data;

assign Data = (~RW) ? Data_in : {DWIDTH{1'bz}};
assign Data_in = (RW) ? Data : {DWIDTH{1'bz}};

assign rdEn = RW;

always @(posedge clk) begin

    // only run when the inputs valid
    if(Valid) begin
        Ready = 0;

        // wait one cycle to read the address
        wait(~clk);
        wait(clk);

        Addr = Addr_in;
        wrEn = ~RW;

        // wait one cycle to write/read from ram
        wait(~clk);
        wait(clk);
        
        wrEn = 0;

        // add two cycles of arbitary delay
        wait(~clk);
        wait(clk);

        wait(~clk);
        wait(clk);

        // tell CPU we're done and disable RAM
        Ready = 1;
    end
end

initial begin
    Ready = 1;
end

endmodule