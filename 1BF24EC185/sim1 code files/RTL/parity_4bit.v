`timescale 1ns/1ps

module parity_4bit (
    input [3:0] d,
    output p_bit,
    input [3:0] c_data,
    input c_p,
    output err
);

assign p_bit = d[0] ^ d[1] ^ d[2] ^ d[3];

assign err = c_data[0] ^ c_data[1] ^
             c_data[2] ^ c_data[3] ^ c_p;

endmodule
