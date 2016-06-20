module equality(in1,in2,out1);

input [31:0] in1,in2;
output logic out1;


if(in1 == in2)
  out1=1;
  else
  out1=0;
