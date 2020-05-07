/// @desc snippet
/// @param {object_id} ctx context object 
/// @param {transition} transisiton is the machine transitioning to this state
/// @param {o_machine} machine the state machine

var game = argument0
var transition = argument1
var machine = argument2

if transition show_debug_message("Changing Turn")

var t = game._fleet._turn

var nextTurn = TURN.PLAYER
if t == TURN.PLAYER {
	nextTurn = TURN.ENEMY	
}

game._fleet._turn = nextTurn
unblock(game._fleet)
change_to_wait_state(game, machine, "CHANGE_TURN")