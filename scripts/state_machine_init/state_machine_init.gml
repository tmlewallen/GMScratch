/// @desc Takes an instance and creates an State Machine object
/// @param {id} ctx object to which this state machine applies

var ctx = argument0
var machine = instance_create_layer(0,0,L_CONTROLLER, o_machine)
machine._ctx = ctx
machine._curr = noone
machine._curr_nm = ""
machine._states = ds_map_create()
machine._transition = true
machine._active = false
machine._var = ds_map_create()
put_state(machine, "NOOP", st_noop)
put_state(machine, "WAIT", st_wait)
put_state(machine, "WAIT_FOR_SIGNAL", st_wait_for_signal)
return machine