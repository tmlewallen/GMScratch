/// @desc Returns a call at a given x,y position
/// @param {grid} grid grid
/// @param {int} x x position
/// @param {int} y y position

var grid = argument0
var xx = argument1
var yy = argument2

if not instance_exists(grid) or grid.object_index != o_grid {
	show_message("Invalid Grid passed to gel_cell_at")
	game_end()
}
if not in_range(grid, xx, yy) {
	show_message(string(xx) + "," + string(yy) + " not a valid position on grid " + string(grid))
	game_end()
}

return grid._cells[xx,yy]