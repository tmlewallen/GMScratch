/// @desc Executes a given state
/// @param {object_id} ctx context object 
/// @param {script_id} state_script script with state logic
/// @param {transition} transisiton is the machine transitioning to this state
/// @param {o_machine} machine READ ONLY state of machine

var ctx = argument0
var script = argument1
var transition = argument2
var machine = argument3

validate_state_input(ctx, script, transition, machine)
return script_execute(script, ctx, transition, machine)