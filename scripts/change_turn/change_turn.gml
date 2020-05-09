/// @desc snippet
/// @param {object_id} ctx context object 
/// @param {transition} transisiton is the machine transitioning to this state
/// @param {o_machine} machine the state machine

var game = argument0
var transition = argument1
var machine = argument2

if transition {
	show_debug_message("Changing Turn")
	exit
}

var t = game._turn

var nextTurn = TURN.PLAYER
if t == TURN.PLAYER {
	nextTurn = TURN.ENEMY	
}

game._turn = nextTurn

for (var i = 0; i < array_length_1d(game._players); i++) {
	game._players[i]._active = TURN.PLAYER == game._turn
}
for (var i = 0; i < array_length_1d(game._enemies); i++) {
	game._enemies[i]._active = TURN.PLAYER != game._turn
}

change_state(machine, "CHECK_MAP")