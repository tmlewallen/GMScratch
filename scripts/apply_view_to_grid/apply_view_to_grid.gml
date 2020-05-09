/// @desc Applies a defined view to an array of cells
/// @param {o_grid} grid 
/// @param {CELL_VIEW} view 

var grid = argument0
var view = argument1

if view > 2 {
	show_message("Not a valid view")
	game_end()
}

for (var xx = 0; xx < grid._cells_x; xx++) {
	for (var yy = 0; yy < grid._cells_y; yy++){ 
		with(get_cell_at(grid, xx, yy)) {
			image_index = view
		}
	}
}