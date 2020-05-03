/// @description Executes state machine

if not _active exit

var nextState = exec_state(_ctx, _curr, _transistion, id)
_transition = false
if nextState != _curr_nm {
	if not ds_map_exists(_states, nextState) {
		show_message(string(nextState) + " does not exist")
		game_end()
	}
	_transition = true
	_curr = ds_map_find_value(_states, nextState)
	_curr_nm = nextState
}
