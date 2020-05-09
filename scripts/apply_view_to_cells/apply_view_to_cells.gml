/// @desc Applies a defined effect to a cell
/// @param {o_grid} grid 
/// @param {array[o_cell]} cells collections of cell to apply effect
/// @param {CELL_VIEW} view 


var grid = argument0
var cells = argument1
var viewNdx = argument2

if viewNdx > 2 {
	show_debug_message("Invalid cell view") 
	return
}
for (var i = 0; i < array_length_1d(cells); i++) {
	var cell = cells[i]
	cell.image_index = viewNdx
}