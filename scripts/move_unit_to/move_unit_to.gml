/// @desc moves a given unit to the provided x,y pos
/// @param {o_grid} grid 
/// @param {o_pos} unit
/// @param {int} x
/// @param {int} y
/// @param {bool} willOccupy should this unit try to occupy this cell

var grid = argument0
var unit = argument1
var xx = argument2
var yy = argument3
var occupy = argument4


assert_type(grid, o_grid, "That's not a grid you're trying to move to")

if not valid_pos(grid, xx, yy) {
	show_debug_message("Can't move there, pos not on grid")
	return false
}

var origin = get_cell_at(grid, unit._x, unit._y)
var destination = get_cell_at(grid, xx, yy)

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
