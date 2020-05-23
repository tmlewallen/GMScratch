/// @desc moves a unit to the pos of a given i_pos
/// @param {i_pos} unit unit to move
/// @param {i_pos} pos i_pos to move the unit to
/// @param {o_grid} optional_grid grid to move to

var ndx = 0;
var unit = argument[ndx++]
var pos = argument[ndx++]
var occupy = argument[ndx++]

var grid = noone

if argument_count > ndx {
	grid = argument[ndx++]
} else {
	grid = get_grid()	
}

assert_type(grid, o_grid, "That's not a grid you're trying to move to")

return move_unit_to_x_y(unit, pos._x, pos._y, occupy, grid)