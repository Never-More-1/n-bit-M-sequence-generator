`timescale 1ns / 1ps
module LFSR9tb;

    logic CLK = 1;
    logic INIT= 0;
    logic GO = 0;
    logic [0:8] SEED;
    logic [0:8] Q;
    integer i = 0;
    
    LFSR9 dut(
        .CLK(CLK),
        .INIT(INIT),
        .GO(GO),
        .SEED(SEED),
        .Q(Q)
    );
    
    always #5 CLK = ~CLK;
        
    initial begin
        SEED = 9'h000;
        #20
        INIT  = 1;
        #20
        INIT = 0;
        #20
        SEED = 9'h001;
        #20
        INIT  = 1;
        #20
        INIT = 0;
        #20
        GO = 1;
        #20
        GO = 0;
        #20
        
        while (Q != SEED) begin
            if (GO == 1) begin
                i++;
            end
            #20;
            GO = ~GO;
        end
        #40;
        $finish;
    end

endmodule
