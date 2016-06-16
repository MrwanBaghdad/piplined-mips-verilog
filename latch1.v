module latch1 (clk,clr,rdIn,pcIn,rdOut,pcOut);

input clk;
input [31:0] in1, pcIn;
output [31:0] rdOut,pcOut;

always @(posedge clk)
	if(clr) 
	begin
			pcout<= 32{0};
			rdOut<=32{0};
	end	 
	else begin
		pcOut<=pcIn;
		rdOut<=rdIn;
	end	
end 

end module;