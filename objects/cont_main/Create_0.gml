/// @description Main Controller

singleton();

grid = instance_create_layer(0,0,"Instances",obj_grid_sprite)
cursor = instance_create_layer(0,0,"Instances",obj_cursor)
unit = instance_create_layer(0,0,"Instances",obj_player)
move_unit_to(grid,unit,0,0, true)

active_step = build_state_machine()
selected_unit = noone


left = false
up = false
right = false
down = false