/// @desc Initializes game
/// @param {object_id} ctx context object 
/// @param {transition} transisiton is the machine transitioning to this state
/// @param {o_machine} machine the state machine

var main = argument0
var transition = argument1
var machine = argument2

assert_st_input(main, machine, o_main)

if transition exit

var grid = instance_create_layer(0,0,L_CONTROLLER, o_grid)

var selector = noone 

var cursor = instance_create_layer(0,0,L_DIALOG, o_cursor)
cursor.depth = -100

with (instance_create_layer(0,0, L_VIEW, o_cell_selector)) {
	_x = 0
	_y = 0
	depth = -100
	//set out of scope
	selector = id
}
//window_set_cursor(cr_none)
main._grid = grid
main._cursor = cursor
main._selector = selector
main._input_reg = instance_create_layer(0,0,L_CONTROLLER, o_input_registry)
main._game = instance_create_layer(0,0,L_CONTROLLER, o_game)

global._grid = grid
global._cell_selector = selector
global._cursor = cursor
global._input_reg = main._input_reg
global._main = main

draw_set_font(f_menu)
calibrate_grid()

change_state(machine, ST_NOOP)