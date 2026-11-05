module top(

    input[15:0]sw,
    input btnC,
    output [15:0] led
    );
    
    Dlatch pt1(
    .D(sw[0]),
    .Q(led[0]),
    .Qnot(led[1]),
    .E(btnC)
    );
    
    memorySystem part2(
        .data(sw[15:8]),
        .addr(sw[7:6]),
        .store(btnC),
        .memory(led[15:8])
        );
    
endmodule
