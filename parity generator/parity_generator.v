module parity_generator (
    input  [3:0] data,
    output       even_parity,
    output       odd_parity
);

    // Even parity bit
    assign even_parity = ^data;

    // Odd parity bit
    assign odd_parity = ~(^data);

endmodule