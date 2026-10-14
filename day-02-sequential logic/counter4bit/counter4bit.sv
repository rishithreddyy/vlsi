module counter4bit(
    input logic clk,reset,enable,
    output logic [3:0]count
);
always_ff @(posedge clk) begin
if(reset)
count <= 4'b0000;
else if(enable)
count <= count + 1'b1;
end
endmodule