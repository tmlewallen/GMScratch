/// @desc Returns a call at a given x,y position
/// @param {grid} grid grid
/// @param {int} x x position
/// @param {int} y y position

var ndx = 0
var xx = argument[ndx++]
var yy = argument[ndx++]
var grid = noone

if argument_count > ndx {
	grid = argument[ndx++]
	assert_type(grid, o_grid, "Invalid Grid get_unit_at_x_y")
} else {
	grid = get_grid()	
}

var cell = get_cell_at_x_y(xx, yy, grid)

return cell._occupant