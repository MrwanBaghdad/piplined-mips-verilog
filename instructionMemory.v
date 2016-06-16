modue instructionMemory.v(input [31:0] A, output[31:0] RD);

reg [31:0] memFile [0:1024]; 
assign RD = memFile[A];
