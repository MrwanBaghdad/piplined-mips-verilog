module(en,in,out);

input [31:0] in;
input en;
output [31:0]out;



always @(posedge en ) begin
	 in <= out ;
end
 
end module;