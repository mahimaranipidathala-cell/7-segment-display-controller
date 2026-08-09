`timescale 1ns/1ps

module seven_segment_controller_tb;

    reg  [3:0] digit;
    wire [6:0] segments;

    // Instantiate 7-Segment Controller
    seven_segment_controller uut (
        .digit(digit),
        .segments(segments)
    );

    initial begin

        $display("==============================================");
        $display("       7-SEGMENT DISPLAY CONTROLLER");
        $display("==============================================");
        $display("Time\tDigit\tSegments (abcdefg)");
        $display("----------------------------------------------");

        digit = 4'h0;
        #10;
        $display("%0t\t%h\t%b", $time, digit, segments);

        digit = 4'h1;
        #10;
        $display("%0t\t%h\t%b", $time, digit, segments);

        digit = 4'h2;
        #10;
        $display("%0t\t%h\t%b", $time, digit, segments);

        digit = 4'h3;
        #10;
        $display("%0t\t%h\t%b", $time, digit, segments);

        digit = 4'h4;
        #10;
        $display("%0t\t%h\t%b", $time, digit, segments);

        digit = 4'h5;
        #10;
        $display("%0t\t%h\t%b", $time, digit, segments);

        digit = 4'h6;
        #10;
        $display("%0t\t%h\t%b", $time, digit, segments);

        digit = 4'h7;
        #10;
        $display("%0t\t%h\t%b", $time, digit, segments);

        digit = 4'h8;
        #10;
        $display("%0t\t%h\t%b", $time, digit, segments);

        digit = 4'h9;
        #10;
        $display("%0t\t%h\t%b", $time, digit, segments);

        digit = 4'hA;
        #10;
        $display("%0t\t%h\t%b", $time, digit, segments);

        digit = 4'hB;
        #10;
        $display("%0t\t%h\t%b", $time, digit, segments);

        digit = 4'hC;
        #10;
        $display("%0t\t%h\t%b", $time, digit, segments);

        digit = 4'hD;
        #10;
        $display("%0t\t%h\t%b", $time, digit, segments);

        digit = 4'hE;
        #10;
        $display("%0t\t%h\t%b", $time, digit, segments);

        digit = 4'hF;
        #10;
        $display("%0t\t%h\t%b", $time, digit, segments);

        $display("----------------------------------------------");
        $display("       SIMULATION COMPLETED");
        $display("==============================================");

        $finish;
    end

endmodule