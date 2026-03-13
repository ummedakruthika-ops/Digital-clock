module digital_clock (
    input clk,          // input clock (1 Hz for simplicity)
    input reset,        // active-high reset
    output reg [5:0] seconds, // 0-59
    output reg [5:0] minutes, // 0-59
    output reg [4:0] hours    // 0-23
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            seconds <= 0;
            minutes <= 0;
            hours   <= 0;
        end else begin
            // increment seconds
            if (seconds == 59) begin
                seconds <= 0;
                // increment minutes
                if (minutes == 59) begin
                    minutes <= 0;
                    // increment hours
                    if (hours == 23)
                        hours <= 0;
                    else
                        hours <= hours + 1;
                end else begin
                    minutes <= minutes + 1;
                end
            end else begin
                seconds <= seconds + 1;
            end
        end
    end

endmodule
