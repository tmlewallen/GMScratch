/// @desc resets meta cells in a grid to initial state
/// @param {o_grid} grid grid to operate on
var grid = argument0
if not instance_exists(grid) or grid.object_index != o_grid {
	show_message("Argument in select_range is not a grid.")
	game_end()	
}

for (var xx = 0; xx < grid._cells_x; xx++) {
	for (var yy = 0; yy < grid._cells_y; yy++){ 
		with(get_cell_at(grid, xx, yy)) {
			_meta._prev = noone
			_meta._sum = INF
			_meta._visited = false
		}
	}
}