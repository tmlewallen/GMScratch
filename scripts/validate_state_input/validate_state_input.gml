/// @desc Validates inputs to a state
/// @param {object_id} ctx context object 
/// @param {script_id} state_script script with state logic
/// @param {transition} transisiton is the machine transitioning to this state
/// @param {o_machine} machine READ ONLY state of machine

if not instance_exists(argument0) {
	show_debug_message("Context instance does not exist")
	game_end()
}
if not script_exists(argument1) {
	show_debug_message("State script does not exist")
	game_end()
}
if not is_bool(argument2) {
	show_debug_message("Transition var is not boolean")
	game_end()
}
if not instance_exists(argument3) or argument3.object_index != o_machine {
	show_debug_message("State Machine is not a state machine or does not exist")
	game_end()
}