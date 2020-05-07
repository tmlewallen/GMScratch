/// @desc Initializes game
/// @param {object_id} ctx context object 
/// @param {transition} transisiton is the machine transitioning to this state
/// @param {o_machine} machine the state machine

var main = argument0
var transition = argument1
var machine = argument2

if not instance_exists(main) or main.object_index != o_cont_main {
	show_message("init_main can only run on an existing o_cont_main")
	game_end()
}

if transition exit
var grid = instance_create_layer(0,0,L_CONTROLLER, o_grid)
var cursor = noone 

with (instance_create_layer(0,0, L_VIEW, o_cursor)) {
	_x = 0
	_y = 0
	depth = -100
	_grid = grid
	//set out of scope
	cursor = id
}

main._kreg = instance_create_layer(0,0,L_CONTROLLER, o_input_registry)
main._game = instance_create_layer(0,0,L_CONTROLLER, o_cont_game)
main._game._main = main //wut 
main._grid = grid
main._cursor = cursor
change_state(machine, "NOOP")