/// @desc Decides next state based on option choice
/// @param {object_id} ctx context object 
/// @param {transition} transisiton is the machine transitioning to this state
/// @param {o_machine} machine the state machine

var game = argument0
var transition = argument1
var machine = argument2

assert_st_input(game, machine, o_game)
var choice = get_var(machine, V_K_GAME__CHOICE)
var source = get_var(machine, V_K_SIGNAL__SOURCE)
if transition {
	dbg(choice)
	assert_exists(source)
	instance_destroy(source)
}

if choice == "Move" change_state(machine, ST_MOVE_UNIT)
