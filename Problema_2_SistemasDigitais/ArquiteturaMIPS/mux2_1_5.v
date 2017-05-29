module mux2_1_5(
	input[4:0] opZero,
	input[4:0] opUm,
	input op,
	output reg[4:0] saida
);

always @(*)
begin
	case(op)
	1'b0:
		saida = opZero;
	1'b1:
		saida = opUm;	
	endcase
end

endmodule