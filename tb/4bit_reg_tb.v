`timescale 1ns/1ps

module register_4bit_tb;

reg clk;
reg [3:0] d;
wire [3:0] q;

// Instantiate the DUT
register_4bit uut (
    .clk(clk),
    .d(d),
    .q(q)
);

// Clock generation (10 ns period)
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Test stimulus
initial begin
    $dumpfile("register_4bit.vcd");
    $dumpvars(0, register_4bit_tb);

    $monitor("Time=%0t | clk=%b | d=%b | q=%b", $time, clk, d, q);

    d = 4'b0000;
    #10;

    d = 4'b1010;
    #10;

    d = 4'b1100;
    #10;

    d = 4'b0111;
    #10;

    d = 4'b1111;
    #10;

    d = 4'b0011;
    #10;

    $finish;
end

endmodule