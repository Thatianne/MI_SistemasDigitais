module mux2_1_32(
	input [31:0] opZero,
	input [31:0] opUm,
	input op,
	output reg [31:0] saida	
);


always@(*)
begin
	case(op)
	1'b0:
		saida = opZero;
	1'b1:
		saida = opUm;
	endcase
end

endmodule