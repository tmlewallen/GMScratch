/// @desc determines if an x,y position is in range of the grid
/// @param grid
/// @param x
/// @param y

var g = argument0
var xx = argument1
var yy = argument2

return xx >= 0 and yy >= 0 and xx < g.cells_x and yy < g.cells_y