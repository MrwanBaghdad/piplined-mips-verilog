module latch1 (clk,En,clr,rdIn,pcIn,rdOut,pcOut);

input clk,En;
input [31:0] in1, pcIn;
output [31:0] rdOut,pcOut;

always @(posedge clk)
	if(clr) 
	begin
		pcout<=0;
		rdOut<=0;
	end	 
	else if( En) begin
		pcOut<=pcIn;
		rdOut<=rdIn;
	end	
end 

end module;