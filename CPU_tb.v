// ---------------------------------------------------------------------
//    Module:     CPU Testbench
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schendel21@up.edu
//    Date:       05/25/2020
// ---------------------------------------------------------------------

`timescale 1ns / 1ns

module CPU_tb();

reg runCPU, clk, reset;

CPU dut(runCPU, clk, reset);

initial begin
    reset = 0;
    #20 reset = 1;
    #20 runCPU = 1;
end

// clock
always begin
    clk = 0;
    forever #10 clk = !clk;
end

endmodule