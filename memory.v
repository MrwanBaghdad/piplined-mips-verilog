module memory(
	clk,
	Write_enable,
	address,
	in_data,
	out_data
	);

input [31:0] in_data,address;
output[31:0] out_data;
reg [31:0] memFile [0:1024]; //size??

assign out_data = memFile[address[]];

always @(posedge clk ) begin
	if (Write_enable) begin
		memFile[address]<=in_data;
	end
end