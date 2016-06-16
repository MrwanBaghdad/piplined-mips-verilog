module mux2 (in1,in2,chooser,out);
input [31:0] in1,in2;
input chooser;
output [31:0] out;

if (chooser==0) begin
	out <=in1;
end
else begin
	out<=in2;
end

end module