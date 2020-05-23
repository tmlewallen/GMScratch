/// @desc Returns a call at a given x,y position
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

assert_type(grid, o_grid, "Invalid Grid passed to gel_cell_at_x_y")

if not valid_pos(xx, yy, grid) terminate(concat(string(xx), ",", string(yy), " not a valid position on grid ", string(grid)))

return grid._cells[xx,yy]