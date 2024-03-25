// This module is designed for 640x480 with a 25 MHz input clock.

module VgaClock
 #(parameter TOTAL_COLS  = 800,
   parameter TOTAL_ROWS  = 525,
   parameter ACTIVE_COLS = 640,
   parameter ACTIVE_ROWS = 480,
   parameter SPRITE_SIZE = 32)
  (input            i_clk,
   input            i_reset,
   output           o_hsync,
   output           o_vsync,
   output reg [9:0] o_col_count = 0,
   output reg [9:0] o_row_count = 0
  );


  always_ff @(posedge i_clk)
  begin
    if (i_reset) begin
      o_col_count <= 0;
      o_row_count <= 0;
    end else begin
      if (o_col_count == TOTAL_COLS - 1) begin
        o_col_count <= 0;

        if (o_row_count == TOTAL_ROWS - 1) begin
          o_row_count <= 0;
        end else begin
          o_row_count <= o_row_count + 1;
        end
      end else begin
        o_col_count <= o_col_count + 1;
      end
    end
  end

  localparam H_PORCH_COLS = TOTAL_COLS - ACTIVE_COLS;
  localparam V_PORCH_ROWS = TOTAL_ROWS - ACTIVE_ROWS;

  assign o_hsync = o_col_count >= H_PORCH_COLS ? 1'b1 : 1'b0;
  assign o_vsync = o_row_count >= V_PORCH_ROWS ? 1'b1 : 1'b0;

endmodule
