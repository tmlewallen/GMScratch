/// @desc Returns true/false if an x,y pos is a valid position in given grid
/// @param {int} x x position
/// @param {int} y y position
/// @param {o_grid} optional_grid grid

var ndx = 0
var xx = argument[ndx++]
var yy = argument[ndx++]

var grid = noone
if argument_count > ndx {
	grid = argument[ndx++]
} else {
	grid = get_grid()
}

assert_type(grid, o_grid, "Not a grid. valid_pos")

return xx >= 0 and yy >= 0 and xx < grid._cells_x and yy < grid._cells_y