module alu(in1,in2,aluop,out);

input [31:0]in1,in2;
output[31:0]out;
input [2:0]aluop;

case(aluop)
0:	out<=in1 &&in2;
1:	out<= in1 || in2;
2:	out<= in1 + in2;
//3:	//
//4:	100
//5:	101
6:	sub out <= in1 - in2;
7:	slt out <= in1 << in2;
default: out<=0;	
end case;
end module;

