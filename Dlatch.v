
module Dlatch(
        input D,
        output reg Q,
        output Qnot,
        input E
    );
    
    always @(D,E) begin
        if (E && D)
            Q <= 1;
        else if (E && !D) 
            Q <= 0;
        else 
            Q <= Q;
    end
    
    assign Qnot = ~Q;  
    
endmodule
