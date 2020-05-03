/// @desc Adds a state to a given state machine
/// @param {o_machine} machine state machine to which the state should be added
/// @param {string} key for state
/// @param {script id} script for state

var machine = argument0
var key = argument1
var script = argument2

ds_map_add(machine._states, key, script)