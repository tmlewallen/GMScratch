/// @description Insert description here
// You can write your code in this editor

cells_x = 10
cells_y = 10
size_x = room_width
size_y = room_height
offset_x = 0
offset_y = 0
margin_x = 0
margin_y = 0
grout = 1

for (x_i = 0; x_i < cells_x; x_i++) {
	for (y_i = 0; y_i < cells_y; y_i++) {	
		cells[x_i, y_i] = instance_create_layer(0,0,"Instances", obj_grid_cell)
	}
}
