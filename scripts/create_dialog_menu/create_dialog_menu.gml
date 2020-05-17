/// @desc creates a dialog menu at x,y with provided options
/// @param {int} x x position of window
/// @param {int} y y position of window
/// @param {o_machine} machine machine to send signal to about selected option
/// @param {array[string]} options options for menu
var xx = argument0
var yy = argument1
var machine = argument2
var options = argument3
var menu = noone;
with (instance_create_layer(xx, yy, L_VIEW, o_menu)) {
	x = xx
	y = yy
	_options = options
	_machine = machine
	menu = id
	event_user(0)
}
