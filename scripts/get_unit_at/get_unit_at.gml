/// @desc Returns a call at a given x,y position
/// @param {grid} grid grid
/// @param {int} x x position
/// @param {int} y y position

var grid = argument0
var xx = argument1
var yy = argument2

var cell = get_cell_at(grid, xx, yy)

return cell._occupant