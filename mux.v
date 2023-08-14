module mux(input_1, input_2, switch, result);

    input wire input_1, input_2, switch;
    output wire result;

    wire and_1;
    wire and_2;

    assign and_1 = input_1 && ~switch;
    assign and_2 = input_2 && switch;
    assign result = and_1 || and_2;

endmodule