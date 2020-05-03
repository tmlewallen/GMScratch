/// @description Insert description here
// You can write your code in this editor
_cells_x = 10
_cells_y = 10
_cell_w = 0
_cell_h = 0
_grid_w = room_width
_grid_h = room_height
_off_w = 0
_off_h = 0
_margin_w = 0
_margin_h = 0
_grout = 1
_update = true

for (x_i = 0; x_i < _cells_x; x_i++) {
	for (y_i = 0; y_i < _cells_y; y_i++) {	
		_cells[x_i, y_i] = instance_create_layer(0,0,L_CONTROLLER, o_cell)
	}
}