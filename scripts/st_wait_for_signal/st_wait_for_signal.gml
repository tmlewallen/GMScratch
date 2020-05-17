/// @desc snippet
/// @param {object_id} ctx context object 
/// @param {transition} transisiton is the machine transitioning to this state
/// @param {o_machine} machine the state machine

var ctx = argument0
var transition = argument1
var machine = argument2

if machine._signal == "" exit