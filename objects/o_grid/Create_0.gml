/// @description set vars and create cells
// You can write your code in this editor
_grid_w = ROOM_W
_grid_h = ROOM_H
_cells_x = GRID_W
_cells_y = GRID_H
_cell_w = 0
_cell_h = 0
_off_w = 0
_off_h = 0
_margin_w = 0
_margin_h = 0
_grout = 1

/// @description Calibrate scale of board
// You can write your code in this editor
for (x_i = 0; x_i < _cells_x; x_i++) {
	for (y_i = 0; y_i < _cells_y; y_i++) {	
		with(instance_create_layer(0,0,L_CONTROLLER, o_cell)) {
			_x = other.x_i
			_y = other.y_i
			other._cells[other.x_i, other.y_i] = id
		}
	}
}

for (x_i = 0; x_i < _cells_x; x_i++) {
	for (y_i = 0; y_i < _cells_y; y_i++) {	
		var cell = _cells[x_i, y_i]
		var neighbors = []
		var ndx = 0
		//Clockwise, starting at 3 oclock
		if valid_pos(id, x_i + 1, y_i) neighbors[ndx++] = get_cell_at(id, x_i + 1, y_i)
		if valid_pos(id, x_i, y_i + 1) neighbors[ndx++] = get_cell_at(id, x_i, y_i + 1)
		if valid_pos(id, x_i - 1, y_i) neighbors[ndx++] = get_cell_at(id, x_i - 1, y_i)
		if valid_pos(id, x_i, y_i - 1) neighbors[ndx++] = get_cell_at(id, x_i, y_i - 1)
		cell._neighbors = neighbors
	}
}