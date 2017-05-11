module bancoRegistradores(
	input clock,
	input modeWE,
	input enable,
	input [4:0] addr1,
	input [4:0] addr2,
	input [4:0] addrDataIn,
	input [31:0] dataIn,
	output [31:0] data1,
	output [31:0] data2	
);

// Matriz banco de registradores;
reg [31:0] mem [0:31];

reg [31:0] data_out1;
reg [31:0] data_out2;

//o registrador zero possui valor zero sempre
//mem[0] = 32'd0; // 32'd0 ou 32'b00000000000000000000000000000000

always @ (posedge clock or enable) // na borda de subida do clock e quando o banco de registradores estiver habilitado( enable = 1)
begin
	if(modeWE == 1) begin
		mem[addrDataIn] = dataIn;
	end
	else begin
		data_out1 = mem[addr1];
		data_out2 = mem[addr2];
	end
end
assign data1 = data_out1;
assign data2 = data_out2;
endmodule