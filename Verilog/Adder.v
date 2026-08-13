module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire add16_out;
    add16 ds1(.a(a[15:0]),.b(b[15:0]),.sum(sum[15:0]),.cout(add16_out));
    add16 ds2(.a(a[31:16]),.b(b[31:16]),.cin(add16_out),.sum(sum[31:16]));

endmodule
