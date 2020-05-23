/// @description Set position of all i_pos
// You can write your code in this editor

with (i_pos) {
	if not valid_pos(_x, _y, other) continue
	var cell = get_cell_at_x_y(_x, _y, other)
	x = cell.x
	y = cell.y
}