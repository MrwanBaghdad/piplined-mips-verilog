module mux3 (in1,in2,in3,in4,chooser,out);

input [31:0] in1,in2,in3;
output [31:0] out;
input [2:0]chooser ;
if (chooser==0) begin
	out <= in1;
end

if (chooser==1) begin
	out<=in2;
end

if (chooser==2) begin
	out <= in3;	
end

if (chooser==4) begin
	out<=in4;
end

end module