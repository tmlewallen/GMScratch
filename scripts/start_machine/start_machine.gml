/// @desc starts a given state machine at given step
/// @param {o_machine} machine state machine to start
/// @param {string} step step to begin at

var machine = argument0
var stateName = argument1

if not instance_exists(machine) or machine.object_index != o_machine {
	show_message("Invalid state machine - can't start")
	game_end()
}
validate_state_exists(machine, stateName)
var states = machine._states

var step = ds_map_find_value(states, stateName)
machine._curr_nm = stateName
machine._curr = step
machine._transition = true
machine._active = true
