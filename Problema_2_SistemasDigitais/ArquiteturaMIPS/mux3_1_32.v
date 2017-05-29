module mux3_1_32(
	input [31:0] opZero,
	input [31:0] opUm,
	input [31:0] opDois,
	input [1:0] op,
	output reg [31:0] saida
);

always@ (*)
begin
	case(op)
	
	2'b00:
		saida = opZero;
	2'b01:
		saida = opUm;
	2'b10:
		saida = opDois;
	default:
		saida = 32'd0;
	endcase

end

endmodule