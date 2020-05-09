/// @desc Handles unit selection
/// @param {object_id} game context object 
/// @param {transition} transisiton is the machine transitioning to this state
/// @param {o_machine} machine the state machine

var game = argument0
var transition = argument1
var machine = argument2

if transition {
	clear_var(machine, game._var_key_selected)	
}

var input = game._main._input_reg

if input._space_d {
	var cursor = game._main._cursor
	var grid = game._main._grid
	var unit = get_unit_at(grid, cursor._x, cursor._y)
	if unit != noone and unit._active {
		put_var(machine, game._var_key_selected, unit)
		change_state(machine, "MOVE_UNIT")	
	}
}


