module alu4bit(
  input logic [3:0]a, [3:0]b, [2:0]opcode,
  output logic [3:0]result, zero,carry);
  logic [4:0]temp; 
  always_comb begin
    result = 4'b0000;
    carry = 1'b0;
    zero = 1'b0;
    temp = 5'b00000;
    case(opcode)
      //add
      3'b000 : begin
        temp = {1'b0,a} + {1'b0,b};
        result = temp[3:0];
        carry = temp[4];
      end
      //sub
      3'b001 : begin
        result = a-b;
      end
       //and
      3'b010 : begin
        result = a&b;
      end
       //or
      3'b011 : begin
        result = a|b;
      end
       //xor
      3'b100 : begin
        result = a^b;
      end
       //shift left
      3'b101 : begin
        result = a<<1;
      end
      //shift right
      3'b110 : begin
        result = a>>1;
      end
      //compare
      3'b111 : begin
        if(a!==b)
        result = (a>b)?a:b;
        else
          result = 4'b0000;
      end
      default : begin
        result = 4'b0000;
        carry = 1'b0;
      end
    endcase
      //zero 
    if(result == 4'b0000)
        zero = 1'b1;
      else 
        zero = 1'b0;
      end 
      endmodule 