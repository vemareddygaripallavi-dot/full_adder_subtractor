module full_adder_subtractor(
    input A, B, Cin, mode,   // mode=0 → Add, mode=1 → Subtract
    output Sum, Cout
);
    wire B_xor;    // modified B based on mode
    wire s1, c1, c2;

    // XOR B with mode — if mode=1, it complements B for subtraction
    assign B_xor = B ^ mode;

    // Full adder logic
    assign Sum  = A ^ B_xor ^ Cin;
    assign Cout = (A & B_xor) | (B_xor & Cin) | (A & Cin);
endmodule
