/// @desc Initializes fleet
/// @param {object_id} ctx context object 
/// @param {transition} transisiton is the machine transitioning to this state
/// @param {o_machine} machine the state machine

var fleet = argument0
var transition = argument1
var machine = argument2

var players = []
with (instance_create_layer(0,0,L_VIEW, o_player)) {
	players[0] = id
	_x = 0
	_y = 0
}
var enemies = []
with (instance_create_layer(0,0,L_VIEW, o_enemy)) {
	enemies[0] = id
	_x = 5
	_y = 5
}
_p_fleet = players
_e_fleet = enemies

change_state(machine, "NOOP")