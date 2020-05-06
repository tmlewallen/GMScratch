/// @desc does nothing
/// @param {object_id} ctx context object 
/// @param {transition} transisiton is the machine transitioning to this state
/// @param {o_machine} machine READ ONLY state of machine

var main = argument0
var transition = argument1
var machine = argument2

if transition {
	show_debug_message("NOOP")
}