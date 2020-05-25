// ---------------------------------------------------------------------
//    File:       Header file
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schendel21@up.edu
//    Date:       04/09/2020
// ---------------------------------------------------------------------

`ifndef HEADER
`define HEADER

//Macro to properly set the data of a reg in the RAM
`define DFFE(q, d, en, reset, clk) \
    always @(posedge clk) begin \
        if (reset) \
            q <= (en) ? d : q; \
    end

`endif