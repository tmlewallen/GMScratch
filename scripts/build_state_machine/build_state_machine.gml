/// @desc assembles the game state machine

var base = instance_create_layer(0,0,"Instances",step_base)
var move = instance_create_layer(0,0,"Instances",step_move_unit)
base.branches[0] = move
move.branches[0] = base
base.active = true
return base