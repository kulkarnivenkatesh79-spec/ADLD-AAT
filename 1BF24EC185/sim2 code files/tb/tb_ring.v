module tb_ring;
reg clk=0, rst=1; wire [3:0] q;
ring_counter uut (clk, rst, q);
always #5 clk = ~clk;
initial begin
$dumpfile("dump.vcd");
$dumpvars(0, tb_ring);
#10 rst = 0; #50 $finish;
end
endmodule
