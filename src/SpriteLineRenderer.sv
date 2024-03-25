

module SpriteLineRenderer
 #(parameter SPRITE_WIDTH = 32)
  (input            i_clk,
   input            i_reset,
   input  [31:0]    i_sprite_line_mask,
   input  [15:0]    i_sprite_line_address,
   input  [9:0]     i_sprite_start_x,
   input            i_tile_row,
   input            i_row_flip,
   output           o_visible,
   output           o_tile_address,
   output [3:0]     o_tile_subpixel
  );

// reg

always_ff @(posedge i_clk)
begin
//   if (i_reset) begin
//     o_visible <= 1'b0;
//     o_tile_address <= 16'h0000;
//     o_tile_subpixel <= 4'b0000;
//   end else begin
//     if (i_sprite_line_mask[i_sprite_line_address]) begin
//       o_visible <= 1'b1;
//       o_tile_address <= i_sprite_line_address;
//       o_tile_subpixel <= i_row_flip ? ~i_tile_row : i_tile_row;
//     end else begin
//       o_visible <= 1'b0;
//     end
//   end
end



endmodule