/// @description Insert description here
// You can write your co
singleton()
show_debug_overlay(true)
grid = instance_create_layer(0,0,L_CONTROLLER, o_grid)
unit = noone
with (instance_create_layer(0,0, L_VIEW, o_cursor)) {
	_x = 0
	_y = 0
	depth = -2
}
with (instance_create_layer(0,0, L_VIEW, o_player)) {
	depth = -1
	_x = 5
	_y = 5
	other.unit = id
}
