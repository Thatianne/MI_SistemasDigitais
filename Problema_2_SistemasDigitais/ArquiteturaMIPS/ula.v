module ula(
	input [31:0] operador1, //esquerdo
	input [31:0] operador2, //direito
	input [2:0]	opCode,
	output [31:0] resultado,
	output isZero
);

// Operaçoes:
// and(0), or(1), add(2), sub(6), set_on_less_than(7)

if(opCode == 3'b000) // and
begin
	and(resultado, operador1, operador2);
end
else if(opCode == 3'b001) //or
begin
	or(resultado, operador1, operador2);
end
else if(opCode == 3'b010) //add
begin
	resultado = operador1 + operador2;
end
else if(opCode == 3'b011) //
begin

end
else if(opCode == 3'b100) //
begin

end
else if(opCode == 3'b101) //
begin
end
else if(opCode == 3'b110) // sub
begin
	resultado = operador1 - operador2;
end
else if(opCode == 3'b111) //set_on_less_than
begin
	
end


if(resultado == 32'd0)
begin
	isZero = 1;
end
endmodule