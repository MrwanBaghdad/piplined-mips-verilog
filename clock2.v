module clock2 (en,inA,inB,outA,outB);

input en;
input [31:0]inA;
input [31:0]inB;
output[31:0]outA;
output[31:0]outB;

end module;


always @(posedge en) begin
	inA <= outA;
	 inB <= outB;
end