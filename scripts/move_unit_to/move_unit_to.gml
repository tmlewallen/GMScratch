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

if not instance_exists(grid) or grid.object_index != o_grid {
	show_message("That's not a grid you're trying to move to")
	game_end()
}

if not in_range(grid, xx, yy) {
	show_message("Can't move there, pos not on grid")
	return false
}

unit._x = xx
unit._y = yy

if not occupy return true

var origin = get_cell_at(grid, unit._x, unit._y)
var destination = get_cell_at(grid, xx, yy)

if destination._occupant != noone {
	show_message("Someone's in here, don't come in")
	return false
}

origin._occupant = noone
destination._occupant = unit
return true
