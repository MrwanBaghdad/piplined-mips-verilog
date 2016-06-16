module registerFile(clk,write_enable,in1,in2,out1,out2,wdAddr,WD);

input clk;
input [4:0]in1;
input [4:0]in2;
input [4:0]wdAddr;
input [31:0]WD;

output [31:0]out1;
output [31:0]out2;

reg[31:0] regFile [31:0];

assign out1 = regFile[in1];
assign out2 = regFile[in2];

always @(posedge clk ) begin
	if(write_enable)begin
		regFile[wdAddr]<=WD;
	end
end

end module
