/// @description Insert description here
// You can write your code in this editor
_grid_w = room_width
_grid_h = room_height
_cells_x = 32
_cells_y = 18
_cell_w = 0
_cell_h = 0
_off_w = 0
_off_h = 0
_margin_w = 0
_margin_h = 0
_grout = 1
_update = true

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
		if in_range(id, x_i + 1, y_i) neighbors[ndx++] = get_cell_at(id, x_i + 1, y_i)
		if in_range(id, x_i, y_i + 1) neighbors[ndx++] = get_cell_at(id, x_i, y_i + 1)
		if in_range(id, x_i - 1, y_i) neighbors[ndx++] = get_cell_at(id, x_i - 1, y_i)
		if in_range(id, x_i, y_i - 1) neighbors[ndx++] = get_cell_at(id, x_i, y_i - 1)
		cell._neighbors = neighbors
	}
}