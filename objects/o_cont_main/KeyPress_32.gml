/// @description Insert description here
// You can write your code in this editor

reset_meta_cells(_grid)
var cellArr = select_range(_grid, unit._mov_r, unit._x, unit._y)
for (var i = 0; i < array_length_1d(cellArr); i++) {
	cellArr[i].image_index = CELL_VIEW.MOVE
}
show_debug_message(string(array_length_1d(cellArr)))
show_debug_message(string(cellArr))