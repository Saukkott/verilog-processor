`timescale 1ns / 1ns
`include "mux.v"

module mux_tb;

reg I1, I2, S;
wire R;

mux uut(I1, I2, S, R);

initial begin
    $dumpfile("mux_tb.vcd");
    $dumpvars(0, mux_tb);

    // test first AND gate
    S = 0;

    // 00 => 0
    I2 = 0;
    I1 = 0;
    #20;

    // 01 => 0
    I2 = 0;
    I1 = 1;
    #20;

    // 10
    I2 = 1;
    I1 = 0;
    #20;

    // 11
    I1 = 1;
    I2 = 1;
    #20;

    // test second AND gate
    S = 1;

    // 00
    I2 = 0;
    I1 = 0;
    #20;

    // 01
    I2 = 0;
    I1 = 1;
    #20;

    // 10
    I2 = 1;
    I1 = 0;
    #20;

    // 11
    I1 = 1;
    I2 = 1;
    #20;

    $display("Test complete");

end

endmodule