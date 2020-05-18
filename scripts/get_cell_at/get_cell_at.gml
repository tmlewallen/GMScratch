/// @desc Returns a call at a given x,y position
/// @param {grid} grid grid
/// @param {int} x x position
/// @param {int} y y position

var grid = argument0
var xx = argument1
var yy = argument2


assert_type(grid, o_grid, "Invalid Grid passed to gel_cell_at")

if not valid_pos(grid, xx, yy) terminate(concat(string(xx), ",", string(yy), " not a valid position on grid ", string(grid)))

return grid._cells[xx,yy]