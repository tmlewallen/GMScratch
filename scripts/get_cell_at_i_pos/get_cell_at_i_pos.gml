/// @desc Returns a call at a given x,y position
/// @param {i_pos} pos i_pos to check at
/// @param {grid} optional_grid grid

var ndx = 0
var pos = argument[ndx++]

var grid = noone

if argument_count > ndx {
	grid = argument[ndx++]
} else {
	grid = get_grid()	
}

assert_type(grid, o_grid, "Invalid Grid passed to gel_cell_at_i_pos")

return get_cell_at_x_y(pos._x, pos._y, grid)