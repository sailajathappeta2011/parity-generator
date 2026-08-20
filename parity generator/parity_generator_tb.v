`timescale 1ns/1ps

module parity_generator_tb;

    reg  [3:0] data;
    wire       even_parity;
    wire       odd_parity;

    parity_generator uut (
        .data(data),
        .even_parity(even_parity),
        .odd_parity(odd_parity)
    );

    initial begin

        $monitor("Time=%0t | Data=%b | Even Parity=%b | Odd Parity=%b",
                 $time, data, even_parity, odd_parity);

        // Test 1
        data = 4'b0000;
        #10;

        // Test 2
        data = 4'b0001;
        #10;

        // Test 3
        data = 4'b0011;
        #10;

        // Test 4
        data = 4'b0101;
        #10;

        // Test 5
        data = 4'b1111;
        #10;

        $finish;
    end

endmodule