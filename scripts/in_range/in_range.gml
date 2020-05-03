/// @desc Returns true/false if an x,y pos is a valid position in given grid
/// @param {grid} grid grid
/// @param {int} x x position
/// @param {int} y y position

var grid = argument0
var xx = argument1
var yy = argument2

if not instance_exists(grid) or grid.object_index != o_grid {
	show_message("Invalid Grid passed to in_range")
	game_end()
}

return xx >= 0 and yy >= 0 and xx < grid._cells_x and yy < grid._cells_y