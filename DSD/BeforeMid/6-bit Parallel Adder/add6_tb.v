module add6_tb;

	wire [5:0] Sum; wire Cout;
	reg [5:0] A, B;
	
	add6 dut (Sum, Cout, A, B);		
	
	initial begin
		#5 A=6'b111101; B=6'b101001;
		#10 A=6'b110101; B=6'b010110;
		#10 A=6'b101110; B=6'b001011;
		#10 A=6'b101011; B=6'b001011;
	end
	
	initial
		$monitor ("%d, A=%b, B=%b, Cout=%b, Sum=%b", $time, A, B, Cout, Sum);

endmodule