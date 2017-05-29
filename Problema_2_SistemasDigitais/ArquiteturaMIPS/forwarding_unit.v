module forwarding_unit(
	input [4:0] regMem, // número do registrador do estágio de memória
	input opMem,
	input [4:0] regWb, // número do registrador do estágio write back
	input opWb,
	input [4:0] regAtual1,
	input [4:0] regAtual2,
	output reg [1:0] opMux1,
	output reg [1:0] opMux2
);
/*
	Compara os registradores atualmente usados com os que se encontram nos 
	estágio de memória e do estágio de write back.
	
	Caso o registrador atual 1 seja igual ao regMem e esse registrador será modificado no futuro,
	opMux1 será 2;
	caso seja igual ao regWb e ele for modificado em um próximo estágio,
	opMux1 será 1.
	Se não forem iguais opMux1 será 0.
	
	O mesmo acontece para o regAtual2.

*/

always @(*)
begin
	
	if((regAtual1 == regMem) && opMem)
		opMux1 = 2'b10;
	else if((regAtual1 == regWb) && opWb)
		opMux1 = 2'b01;
	else
		opMux1 = 2'b00;
		
	if((regAtual2 == regMem) && opMem)
		opMux2 = 2'b10;
	else if((regAtual2 == regWb) && opWb)
		opMux2 = 2'b01;
	else
		opMux2 = 2'b00;	
end
endmodule