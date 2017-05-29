module ula(
	input [31:0] operador1, //esquerdo
	input [31:0] operador2, //direito
	input [2:0]	opCode,
	output reg [31:0] resultado,
	output reg isZero
);

/* 8 opções */

parameter Add = 3'b000;
parameter Sub	= 3'b001;
parameter Or	= 3'b010;
parameter Equal = 3'b011;
parameter Less = 3'b100;
parameter Mult = 3'b101;
parameter Div	= 3'b110;
parameter And	= 3'b111;

always @ (*)
begin
	case(opCode)
		Add:
		begin
			resultado = operador1 + operador2;
		end
		Sub:
		begin
			resultado = operador1 - operador2;
		end
		Or:
		begin
			resultado = operador1 | operador2;
		end
		Equal:
		begin
			if(operador1 == operador2)
			begin
				resultado = 32'd1;
			end
			else
			begin
				resultado = 32'd0;
			end
		end
		Less:
		begin
			if(operador1 < operador2)
				resultado = 32'd1;
			else
				resultado = 32'd0;
		end
		Mult:
		begin
			resultado = operador1 * operador2;
		end
		Div:
		begin
			resultado = operador1 / operador2;
		end
		And:
		begin
			resultado = operador1 & operador2;
		end
	
	endcase
	
	if(resultado == 32'd0)
		isZero = 1;
	
end

endmodule