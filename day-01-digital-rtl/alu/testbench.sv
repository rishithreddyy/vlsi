module tb_alu4bit;
  logic [3:0]a; 
  logic [3:0]b;
  logic [2:0]opcode;
  logic [3:0]result;
  logic carry; 
  logic zero;
  alu4bit dut(
    .a(a), .b(b), .opcode(opcode), .result(result), .carry(carry), .zero(zero) 
  );
  initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars(0, tb_alu4bit); 
end

  initial begin
    //add 
    a = 4'b0010;
    b = 4'b0001;
    opcode = 3'b000;
    #1;
    if(result !== 4'b0011)
      $display("add fail");
    else 
      $display("add pass");
    //sub 
    a = 4'b0010;
    b = 4'b0001;
    opcode = 3'b001;
    #1;
    if(result !== 4'b0001)
      $display("sub fail");
    else 
      $display("sub pass");
    //and
    a = 4'b1011;
    b = 4'b0101;
    opcode = 3'b010;
    #1;
    if(result !== 4'b0001)
      $display("and fail");
    else 
      $display("and pass");
    //or
    a = 4'b1001;
    b = 4'b0100;
    opcode = 3'b011;
    #1;
    if(result !== 4'b1101)
      $display("or fail");
    else 
      $display("or pass");
    //xor
    a = 4'b1001;
    b = 4'b0100;
    opcode = 3'b100;
    #1;
    if(result !== 4'b1101)
      $display("xor fail");
    else 
      $display("xor pass");
    //shift left
    a = 4'b1001;
    opcode = 3'b101;
    #1;
    if(result !== 4'b0010)
      $display("shift left fail");
    else 
      $display("shift left pass");
    //shift right
    a = 4'b1001;
    opcode = 3'b110;
    #1;
    if(result !== 4'b0100)
      $display("shift right fail");
    else 
      $display("shift right pass");
    //compare
    a = 4'b1001;
    b = 4'b0100;
    opcode = 3'b111;
    #1;
    if(result !== 4'b1001)
      $display("compare fail");
    else 
      $display("compare pass");
    //carry
     a = 4'b1110;
     b = 4'b1100;
    opcode = 3'b000;
    #1;
    if(result !== 4'b1010 || carry !== 1'b1)
      $display("carry add fail");
    else 
      $display("carry add pass");
    //zero
     a = 4'b0000;
     b = 4'b0000;
    opcode = 3'b000;
    #1;
    if(zero !== 1'b1)
      $display("zero fail");
    else 
      $display("zero pass");
    
    $display("simulation complete");
    $finish();
  end
endmodule