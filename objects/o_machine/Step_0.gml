/// @description Executes state machine

if not _active exit

exec_state(_curr, _ctx, _transition, id)
_transition = false
if _next_state != "" {
	validate_state_exists(id, _next_state)
	_transition = true
	_curr = ds_map_find_value(_states, _next_state)
	_curr_nm = _next_state
	_next_state = ""
}
