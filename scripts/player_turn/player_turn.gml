/// @desc Handles object movement
/// @param {object_id} ctx context object 
/// @param {transition} transisiton is the machine transitioning to this state
/// @param {o_machine} machine the state machine

var fleet = argument0
var transition = argument1
var machine = argument2

if transition exit

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
	change_state(machine, "CHANGE_TURN")
}