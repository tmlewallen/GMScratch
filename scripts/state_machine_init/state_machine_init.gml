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
put_state(machine, "NOOP", noop_state)
return machine