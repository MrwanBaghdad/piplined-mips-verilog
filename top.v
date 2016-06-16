'include latch1.v'
'include latch2.v'
'include latch3.v'
'include latch4.v'
'include hazardUnit.v'
'include alu.v'
'include memory.v'
'include mux2.v'
'include mux3.v'
'include  mux4.v'
'include registerFile.v'
'include instructionMemory.v'
'inlcude clock.v'
'inlcude clock2.v'

module top();

reg clk_top;
wire pcf;
wire logic stallIF_wire;
wire [31:0] pc_wire;
clock clockMemory(.en(stallIF_wire),.clk(clk_top));
mux2 pc_mux(pcplus4F,'in2','jump signal',pc_wire);


wire [31:0]pcplus4F;
wire stallD_wire,branchD_wire,FowardAD_wire,FowardBD_wire,FlushE_wire,
FowardAE_wire,ForwardBE_wire;

wire [31:0] instrcD1,instrD,address_wire;


latch2 regFile_latch();
latch3 ALU_latch();
latch4 dMemory_latch();

assign pcplus4F = pc_wire + 4 ;
instructionMemory intrction_Memory(address_wire,instrcD1);

latch1 IR_latch(.pcIn(pcplus4F),.rdIn(instrcD1),.rdOut(instrD),.En(!stallD_wire),.clk(clk_top),'clear waiting for control unit'); //!!!


