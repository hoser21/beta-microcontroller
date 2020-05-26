// ---------------------------------------------------------------------
//    Module:     Testbench for 32-bit Register File
//    Author:     Alex Schendel and Kevin Hoser
//    Contact:    schendel21@up.edu and hoser21@up.edu
//    Date:       03/26/2020
//
//    All rights reserved
// ---------------------------------------------------------------------

`timescale 1ns / 1ns

module test_RegisterFile32;

wire [31:0] a, b;
reg [31:0] d;
reg clk, w_en;
reg [4:0] w_sel, a_sel, b_sel;

registerFile32 dut (a, b, clk, d, w_sel, w_en, a_sel, b_sel); 
  
always
  begin
    clk = 0;
    forever #10 clk = !clk;
  end

initial	// Test stimulus
  begin
    #5
    #20 d = 32'h88888888; w_sel = 5'h08; w_en = 1; a_sel = 5'h00 ; b_sel = 5'h00;
    #20 d = 32'h33333333; w_sel = 5'h03; w_en = 1; a_sel = 5'h00 ; b_sel = 5'h00;
    #20 d = 32'h77777777; w_sel = 5'h07; w_en = 1; a_sel = 5'h00 ; b_sel = 5'h00;
    #20 d = 32'h66666666; w_sel = 5'h06; w_en = 1; a_sel = 5'h00 ; b_sel = 5'h00;
    #5 w_en = 0;
    #5 a_sel = 5'h03; b_sel = 5'h08;
    #10 w_en = 1;
    #20 d = 32'h22222222; w_sel = 5'h02; w_en = 1; a_sel = 5'h00 ; b_sel = 5'h00;
    #20 d = 32'h99999999; w_sel = 5'h09; w_en = 1; a_sel = 5'h00 ; b_sel = 5'h00;
    #5 w_en = 0;
    #5 a_sel = 5'h09; b_sel = 5'h09;
    #10 w_en = 1;
    #20 d = 32'h27272727; w_sel = 5'h1B; w_en = 1; a_sel = 5'h00 ; b_sel = 5'h00;
    #5 w_en = 0;
    #5 a_sel = 5'h1B; b_sel = 5'h1B;
    #10 w_en = 1;
    #20 d = 32'hFFFFFFFF; w_sel = 5'h1F; w_en = 1; a_sel = 5'h00 ; b_sel = 5'h00;
    #5 w_en = 0;
    #5 a_sel = 5'h1F; b_sel = 5'h1F;
    #10 w_en = 1;
    #20 d = 32'h5A5A5A5A; w_sel = 5'h09; w_en = 1; a_sel = 5'h00 ; b_sel = 5'h00;
    #5 w_en = 0;
    #5 a_sel = 5'h09; b_sel = 5'h09;
    #10 w_en = 1;
  end

endmodule  