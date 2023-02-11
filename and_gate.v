
module and_gate (input branch, zero, output branch_zero);
    assign branch_zero = branch & zero;
endmodule