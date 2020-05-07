/// @desc Initializes game
/// @param {object_id} ctx context object 
/// @param {transition} transisiton is the machine transitioning to this state
/// @param {o_machine} machine the state machine

var game = argument0
var transition = argument1
var machine = argument2

game._fleet = instance_create_layer(0,0,L_CONTROLLER, o_cont_fleet)
game._fleet._game = game
change_to_wait_state(game, machine, "CHANGE_TURN")