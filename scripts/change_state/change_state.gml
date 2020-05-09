/// @desc updates a state machine with the next state
/// @param {o_machine} machine state machine
/// @param {string} state next state

var machine = argument0
var stateName = argument1

show_debug_message("Moving to " + stateName)
machine._next_state = stateName