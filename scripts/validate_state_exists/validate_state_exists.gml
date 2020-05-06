/// @desc verifies that a given state exists
/// @param {o_machine} machine state machine
/// @param {string} stateName name of state to look for

var machine = argument0
var stateName = argument1
var states = machine._states

if not ds_map_exists(states, stateName) {
	show_message("Step " + stateName + " does not exist for machine " + string(machine))
	game_end()
}