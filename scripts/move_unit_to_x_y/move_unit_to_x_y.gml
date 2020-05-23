/// @desc moves a given unit to the provided x,y pos
/// @param {o_pos} unit
/// @param {int} x
/// @param {int} y
/// @param {bool} willOccupy should this unit try to occupy this cell
/// @param {o_grid} optional_grid grid to use

var ndx = 0;
var unit = argument[ndx++]
var xx = argument[ndx++]
var yy = argument[ndx++]
var occupy = argument[ndx++]

var grid = noone

if argument_count > ndx {
	grid = argument[ndx++]
} else {
	grid = get_grid()
}

assert_type(grid, o_grid, "That's not a grid you're trying to move to")
assert_type(unit, i_pos, "Instance must be an i_pos. move_unit_to_x_y")

if not valid_pos(xx, yy, grid) {
	show_debug_message("Can't move there, pos not on grid")
	return false
}

var origin = get_cell_at_i_pos(unit, grid)
var destination = get_cell_at_x_y(xx, yy, grid)

if occupy and destination._occupant != noone {
	show_debug_message("Someone's in here, don't come in")
	return false
}

unit._x = xx
unit._y = yy

if not occupy return true

origin._occupant = noone
destination._occupant = unit
return true
