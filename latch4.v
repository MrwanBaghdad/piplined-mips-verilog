module latch4 (clk ,clr,regWriteM,MemtoRegM,readDataM,AluOutM,WriteRegM,
	regWriteW,MemtoRegW,readDataW.AluOutW,WriteRegW);

input clk,clr,regWriteM,MemtoRegM;
input [31:0] readDataM,AluOutM;
input [4:0] writeRegM;

output regWriteW,MemtoRegW;
output [31:0] readDataW,AluOutW;
output[4:0] WriteRegW;

always @(posedge clk) begin
	if (clr) begin
		// reset
		regWriteW<=0;
		MemtoRegW<=0;
		readDataW<=0;
		AluOutW<=0;
		WriteRegW<=0;
	end
	else begin
		regWriteW<=regWriteM;
		MemtoRegW<=MemtoRegM;
		readDataW<=readDataM;
		AluOutW<=AluOutM;
		WriteRegW<=WriteRegM;
	end
end