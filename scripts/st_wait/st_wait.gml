/// @desc snippet
/// @param {object_id} ctx context object 
/// @param {transition} transisiton is the machine transitioning to this state
/// @param {o_machine} machine the state machine

var ctx = argument0
var transition = argument1
var machine = argument2

if ctx._waiting exit 

var nextState = ctx._post_wait
validate_state_exists(machine, nextState)
ctx._post_wait = ""
change_state(machine, nextState)
