/// @desc resets meta cells in a grid to initial state
/// @param {o_grid} grid grid to operate on
var grid = argument0

assert_type(grid, o_grid, "Grid must be a grid")

for (var xx = 0; xx < grid._cells_x; xx++) {
	for (var yy = 0; yy < grid._cells_y; yy++){ 
		with(get_cell_at_x_y(xx, yy, grid)) {
			_meta._prev = noone
			_meta._sum = INF
			_meta._visited = false
		}
	}
}