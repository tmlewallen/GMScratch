/// @desc Handles object movement
/// @param {object_id} ctx context object 
/// @param {transition} transisiton is the machine transitioning to this state
/// @param {o_machine} machine the state machine

var fleet = argument0
var transition = argument1
var machine = argument2

if transition {
	for (var i = 0; i < array_length_1d(fleet._p_fleet); i++) {
		fleet._p_fleet[i]._active = true
	}
	for (var i = 0; i < array_length_1d(fleet._e_fleet); i++) {
		fleet._e_fleet[i]._active = true
	}
	show_debug_message(string(fleet._turn) + "'s Turn")
	exit
}

var units = noone
switch (fleet._turn) {
	case TURN.PLAYER:
		units = fleet._p_fleet
		break
	case TURN.ENEMY:
		units = fleet._e_fleet
		break
	default:
		show_debug_message("no turn selected")
		exit
}
var allUnitsMoved = true
for (var i = 0; i < array_length_1d(units); i++) {
	if units[i]._active	allUnitsMoved = false; break
}
if allUnitsMoved {
	unblock(fleet._game)
	change_to_wait_state(fleet, machine, "FLEET_TURN")
}