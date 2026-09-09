module tb_mux2to1;

    logic a;
    logic b;
    logic s;
    logic y;

    mux2to1 dut (
        .a(a),
        .b(b),
        .s(s),
        .y(y)
    );

    initial begin

        // Test 1
        a = 0;
        b = 0;
        s = 0;
        #1;

        if (y !== a)
            $display("FAIL: Test 1");
        else
            $display("PASS: Test 1");

        // Test 2
        a = 1;
        b = 0;
        s = 0;
        #1;

        if (y !== a)
            $display("FAIL: Test 2");
        else
            $display("PASS: Test 2");

        // Test 3
        a = 0;
        b = 1;
        s = 1;
        #1;

        if (y !== b)
            $display("FAIL: Test 3");
        else
            $display("PASS: Test 3");

        // Test 4
        a = 1;
        b = 1;
        s = 1;
        #1;

        if (y !== b)
            $display("FAIL: Test 4");
        else
            $display("PASS: Test 4");

        $finish;

    end

endmodule