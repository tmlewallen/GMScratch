/// @desc Applies a defined view to an array of cells
/// @param {o_grid} grid 
/// @param {CELL_VIEW} view 

var grid = argument0
var view = argument1

if view > 2 {
	terminate("Not a valid view")
}

for (var xx = 0; xx < grid._cells_x; xx++) {
	for (var yy = 0; yy < grid._cells_y; yy++){ 
		with(get_cell_at_x_y(xx, yy, grid)) {
			image_index = view
		}
	}
}