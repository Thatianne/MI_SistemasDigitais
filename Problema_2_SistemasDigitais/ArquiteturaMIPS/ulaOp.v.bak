module ulaOp(
input [5:0] code,
output reg [2:0] opCode
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

parameter beq = 6'b000100;
parameter bne = 6'b000101;
parameter addiu = 6'b001001;
parameter ori = 6'b001101;
parameter lui = 6'b001111;
parameter mfhi = 6'b010000;
parameter mul = 6'b011000;
parameter div = 6'b011010;
parameter add = 6'b100000;
parameter addu = 6'b100001;
parameter lw = 6'b100011;
parameter slt = 6'b101010;
parameter sw = 6'b101011;

always @ (*)
begin
		case (opCode)
			beq:
			begin
				opCode = Equal;
			end
			bne:
			begin
				opCode = Equal;
			end
			addiu:
			begin
				opCode = Add;
			end
			ori:
			begin
				opCode = Or;
			end
			lui:
			begin
				opCode = Mult;
			end
			mfhi:
			begin
				opCode = Add;
			end
			mul:
			begin
				opCode = Mult;
			end
			div:
			begin
				opCode = Div;
			end
			add:
			begin
				opCode = Add;
			end
			addu:
			begin
				opCode = Add;
			end
			lw:
			begin
				opCode = Add;
			end
			slt:
			begin
				opCode = Less;
			end
			sw:
			begin
				opCode = Add;
			end			
	endcase
end

endmodule