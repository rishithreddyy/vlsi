module tb_half_adder;

    logic a;
    logic b;
    logic sum;
    logic carry;

    // Instantiate the DUT
    half_adder dut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    initial begin

        // Test 1: 0 + 0
        a = 0;
        b = 0;
        #1;

        if (sum !== 0 || carry !== 0)
            $display("FAIL: A=0, B=0 | SUM=%b CARRY=%b", sum, carry);
        else
            $display("PASS: A=0, B=0");

        // Test 2: 0 + 1
        a = 0;
        b = 1;
        #1;

        if (sum !== 1 || carry !== 0)
            $display("FAIL: A=0, B=1 | SUM=%b CARRY=%b", sum, carry);
        else
            $display("PASS: A=0, B=1");

        // Test 3: 1 + 0
        a = 1;
        b = 0;
        #1;

        if (sum !== 1 || carry !== 0)
            $display("FAIL: A=1, B=0 | SUM=%b CARRY=%b", sum, carry);
        else
            $display("PASS: A=1, B=0");

        // Test 4: 1 + 1
        a = 1;
        b = 1;
        #1;

        if (sum !== 0 || carry !== 1)
            $display("FAIL: A=1, B=1 | SUM=%b CARRY=%b", sum, carry);
        else
            $display("PASS: A=1, B=1");

        $finish;

    end

endmodule