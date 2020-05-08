/// @desc Handles object movement
/// @param {object_id} game context object 
/// @param {transition} transisiton is the machine transitioning to this state
/// @param {o_machine} machine the state machine

var game = argument0
var transition = argument1
var machine = argument2

if transition {
	for (var i = 0; i < array_length_1d(game._players); i++) {
		game._players[i]._active = TURN.PLAYER == game._turn
	}
	for (var i = 0; i < array_length_1d(game._enemies); i++) {
		game._enemies[i]._active = TURN.PLAYER != game._turn
	}
	show_debug_message(string(game._turn) + "'s Turn")
	exit
}

var units = noone

switch (game._turn) {
	case TURN.PLAYER:
		units = game._players
		break
	case TURN.ENEMY:
		units = game._enemies
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