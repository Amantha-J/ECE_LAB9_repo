
module memoryBlock #(
    parameter BIT_COUNT = 8 
)
(
    input [7:0] data,
    input E,
    output [7:0] out
);
    
//    always @(data,E) begin
//        if (E)
//            out <= data;
//    end
    
    Dlatch dlatch0(
    .D(data[0]),
    .E(E),
    .Q(out[0])
    );
    
    Dlatch dlatch1(
    .D(data[1]),
    .E(E),
    .Q(out[1])
    );
    
    Dlatch dlatch2(
    .D(data[2]),
    .E(E),
    .Q(out[2])
    );
    
    Dlatch dlatch3(
    .D(data[3]),
    .E(E),
    .Q(out[3])
    );
    
    Dlatch dlatch4(
    .D(data[4]),
    .E(E),
    .Q(out[4])
    );
    
    Dlatch dlatch5(
    .D(data[5]),
    .E(E),
    .Q(out[5])
    );
    
    Dlatch dlatch6(
    .D(data[6]),
    .E(E),
    .Q(out[6])
    );
    
    Dlatch dlatch7(
    .D(data[7]),
    .E(E),
    .Q(out[7])
    );
    
    
    
endmodule