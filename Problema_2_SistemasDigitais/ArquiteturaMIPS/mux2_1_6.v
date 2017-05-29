module mux2_1_6( // Para ulaOp, se o código vai ser o op ou opx
	input [5:0] opZero,
	input [5:0] opUm,
	input op,
	output reg [5:0] saida
);

always@ (*)
begin
	case(op)
	1'b0:
		saida = opZero;
	1'b1:
		saida = opUm;	
	endcase
end

endmodule