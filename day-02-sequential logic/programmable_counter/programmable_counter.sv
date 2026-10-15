module programmable_counter(
  input logic clk,reset,enable,up_down,load,
  input logic [3:0]logicvalue,
  output logic [3:0]count 
);
  always_ff @(posedge clk)begin
    if(reset) 
      count<=4'b0000;
    else if(load)
      count<=loadvalue
      else if(enable)
        if(up_down)
          count=count+1'b1;
    else
      count=count-1'b1;
  end
endmodule