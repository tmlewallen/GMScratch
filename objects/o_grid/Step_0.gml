/// @description Set position of all i_pos
// You can write your code in this editor

with (i_pos) {
	if not valid_pos(other, _x, _y) continue
	var cell = get_cell_at(other, _x, _y)
	x = cell.x
	y = cell.y
}