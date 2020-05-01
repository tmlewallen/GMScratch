/// @description Moves a unit to a position on a given grid
/// @param grid Grid on which to move the unit
/// @param unit unit to be moved on grid
/// @param xx x position on grid
/// @param yy y position on grid

var grid = argument0
var unit = argument1
var xx = argument2
var yy = argument3
var willOccupy = argument4

if xx < 0 or xx >= grid.cells_x or yy < 0 or yy >= grid.cells_y {
	show_debug_message("Out of bounds. Not moving.");
	return false;
}
var origin = grid.cells[unit.pos_x, unit.pos_y]
show_debug_message("Moving Unit from " + string(origin.pos_x) + "," + string(origin.pos_y) + " to " + string(xx) + "," + string(yy))
var destination = grid.cells[xx,yy]

if willOccupy {
	if destination.occupant != noone { //Can't have two people on one square
		show_debug_message("Position already occupied.");
		return false;
	}
	origin.occupant = noone
	destination.occupant = unit
}
unit.pos_x = xx
unit.pos_y = yy

return true;