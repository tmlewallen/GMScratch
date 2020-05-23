/// @desc Returns a call at a given x,y position
/// @param {i_pos} i_pos positionable location
/// @param {grid} optional_grid grid

var ndx = 0
var pos = argument[ndx++]
var grid = noone

assert_type(pos, i_pos, "Not an i_pos. get_unit_at_i_pos")
if argument_count > ndx {
	grid = argument[ndx++]
	
} else {
	grid = get_grid()	
}

assert_type(grid, o_grid, "Invalid Grid. get_unit_at_i_pos")

var cell = get_cell_at_i_pos(pos, grid)

return cell._occupant