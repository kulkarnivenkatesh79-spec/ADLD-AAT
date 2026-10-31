
`timescale 1ns/1ps

module test_counter;

reg [3:0] d;
wire p_bit;

reg [3:0] c_data;
reg c_p;
wire err;

parity_4bit uut (
    .d(d),
    .p_bit(p_bit),
    .c_data(c_data),
    .c_p(c_p),
    .err(err)
);

initial begin
    // Generate waveform
    $dumpfile("parity.vcd");
    $dumpvars(0, test_counter);

    

    d = 4'b0000;
    c_data = 4'b0000;
    c_p = 0;
    #10;

    d = 4'b0001;
    c_data = 4'b0001;
    c_p = 1;
    #10;

    d = 4'b1010;
    c_data = 4'b1010;
    c_p = 0;
    #10;

    d = 4'b1111;
    c_data = 4'b1111;
    c_p = 1;
    #10;

    d = 4'b1101;
    c_data = 4'b1101;
    c_p = 0;
    #10;

    $finish;
end

endmodule

