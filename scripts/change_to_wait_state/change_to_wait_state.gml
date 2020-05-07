/// @desc Move to waiting state
/// @param {object_id} ctx context object 
/// @param {o_machine} machine the state machine
/// @param {string} next state to transition to after wait

var ctx = argument0
var machine = argument1
var next = argument2

ctx._waiting = true
ctx._post_wait = next
change_state(machine, "WAIT")