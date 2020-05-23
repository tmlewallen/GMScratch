/// @desc Handles unit selection
/// @param {object_id} game context object 
/// @param {transition} transisiton is the machine transitioning to this state
/// @param {o_machine} machine the state machine

var game = argument0
var transition = argument1
var machine = argument2

assert_st_input(game, machine, o_game)

if transition {
	clear_var(machine, V_K_GAME__SELECTED)	
}

if get_confirm_pressed() {
	var cs = get_cell_selector()
	var unit = get_unit_at_i_pos(cs)
	if unit != noone and unit._active {
		put_var(machine, V_K_GAME__SELECTED, unit)
		put_var(machine, V_K_GAME__OPTIONS, ["Move"])
		change_state(machine, ST_SHOW_OPTIONS)	
	}
}


