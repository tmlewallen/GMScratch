/// @desc assembles the game state machine

var init = instance_create_layer(0,0,"Instances",step_init)
var base = instance_create_layer(0,0,"Instances",step_base)
var move = instance_create_layer(0,0,"Instances",step_move_unit)
ds_map_add(base.branches, STEP.MOVE_UNIT, move)
ds_map_add(move.branches, STEP.BASE, base)
init.start = base
init.transition = true
return init