/// @description Insert description here
// You can write your code in this editor

var cellWidth = floor(size_x / cells_x)
var cellHeight = floor(size_y / cells_y);

var gridWidth = cells_x * cellWidth;
var gridHeight = cells_y * cellHeight;

//Draw vertical lines
for (x_i = offset_x; x_i <= gridWidth + offset_x; x_i += cellWidth) {
	draw_line_width(x_i, offset_y, x_i, gridHeight + offset_y, border_w_y)	
}
//Draw horizontal lines
for (y_i = offset_y; y_i <= gridHeight + offset_y; y_i += cellHeight) {
	draw_line_width(offset_x, y_i, gridWidth + offset_x, y_i, border_w_x)
}