module tb_andgate;
    logic a;
    logic b;
    logic y;
  
    andgate dut (
        .a(a), 
        .b(b), 
        .y(y)
    );

    initial begin
    $monitor("a = %b, b = %b | y = %b", a, b, y);

        a = 0; b = 0; #1;
        a = 0; b = 1; #1;
        a = 1; b = 0; #1;
        a = 1; b = 1; #1;
        
        $finish;
    end
endmodule
