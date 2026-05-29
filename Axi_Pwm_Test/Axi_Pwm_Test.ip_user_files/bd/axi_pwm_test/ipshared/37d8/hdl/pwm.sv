`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/29/2026 12:33:16 PM
// Design Name: 
// Module Name: pwm
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pwm(
    input logic clk,
    input logic rstn,
    input logic en,
    input logic [7:0] duty_cycle,

    output logic pwm_out
);

logic [7:0] pwm_counter;
logic [15:0] slow_counter;

always_ff @(posedge clk)
begin
    if (!rstn)
    begin
        pwm_counter <= '0;
        slow_counter <= '0;
    end
    else
    begin
        if (en)
        begin
            slow_counter <= slow_counter + 1;

            if (slow_counter == 16'd1000)
            begin
                slow_counter <= '0;
                pwm_counter <= pwm_counter + 1;
            end
        end
        else
        begin
            pwm_counter <= '0;
            slow_counter <= '0;
        end
    end
end

assign pwm_out = en && (pwm_counter < duty_cycle);

endmodule
