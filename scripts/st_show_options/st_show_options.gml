/// @desc shows menu with given options
/// @param {object_id} ctx context object 
/// @param {transition} transisiton is the machine transitioning to this state
/// @param {o_machine} machine the state machine

var ctx = argument0
var transition = argument1
var machine = argument2
var unit = get_var(machine, ctx._var_key_selected)
var options = get_var(machine, ctx._var_key_options)
create_dialog_menu(unit.x, unit.y, machine, options)

change_state(machine, "WAIT_FOR_SIGNAL")