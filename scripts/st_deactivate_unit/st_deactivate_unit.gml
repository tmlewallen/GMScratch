/// @desc Handles object attacks
/// @param {object_id} game context object 
/// @param {transition} transisiton is the machine transitioning to this state
/// @param {o_machine} machine the state machine

var game = argument0
var transition = argument1
var machine = argument2

var unit = get_var(machine, game._var_key_selected)
unit._active = false
change_state(machine, "CHECK_MAP")