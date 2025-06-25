`timescale 1ns / 1ps

module LFSR9
    #(parameter N = 9)(
    input CLK,
    input INIT,
    input GO,
    input [0:8] SEED,
    output [0:8] Q
    );
    
    logic [0:8] sreg;
    logic [0:8] sdat;
    var logic t;
    var logic fb;
    integer i;
        
    always_ff @(posedge CLK) begin
        t <= 0;
        if (INIT) begin
            if (~t) begin
                sreg <= SEED;
                t <= 1;
            end 
        end else if (GO) begin
            if (~t) begin
                sreg <= sdat;
                t <= 1;
            end
        end else 
            t <= 0;
    end
    always_ff @(sreg) begin
        fb = sreg[8] ^ sreg[3] ^ sreg[2] ^ sreg[0];
        sdat <= {fb, sreg[0:7]};
    end
    assign Q = sreg;
    
endmodule
