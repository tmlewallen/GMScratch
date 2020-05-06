/// @desc Executes a given state
/// @param {script_id} state_script script with state logic
/// @param {object_id} ctx context object 
/// @param {transition} transisiton is the machine transitioning to this state
/// @param {o_machine} machine READ ONLY state of machine

var script = argument0
var ctx = argument1
var transition = argument2
var machine = argument3

validate_state_input(script, ctx, transition, machine)
script_execute(script, ctx, transition, machine)