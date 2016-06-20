module latch3(clk,regwriteE,memtoregE,memWriteE,aluControlE, aluOutE,writeDataE,writeRegE,
	regwriteM,memtoRegM,memWriteM,aluOutM,writeDataM,writeRegM);
input clk,clr, regwriteE , memtoregE,memWriteE;

input [31:0] aluOutE,writeDataE;
input [4:0] writeRegE;

output regwriteM,memtoRegM,memWriteM;
output [31:0]aluOutM,writeDataM;
output [4:0] writeRegM;

always @(posedge clk) begin
	if (clr) begin
		// reset
		regwriteM<=0;
		memtoRegM<=0;
		memWriteM<=0
		aluOutM<=0;
		writeDataM<=0;
		writeRegM<=0;
	end
	else begin
		regwriteM<=regwriteE;
		memtoRegM<=memtoregE;
		memWriteM<=memWriteE;
		aluOutM<=aluOutE;
		writeRegM<=writeRegE;
	end
end