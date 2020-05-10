/// @desc Handles object attacks
/// @param {object_id} game context object 
/// @param {transition} transisiton is the machine transitioning to this state
/// @param {o_machine} machine the state machine

var game = argument0
var transition = argument1
var machine = argument2

var grid = game._main._grid
var selected = get_var(machine, game._var_key_selected)

if not instance_exists(selected) {
	show_debug_message("Selected unit does not exist") 
	change_state(machine, "CHECK_MAP")
}

if transition {
	apply_view_to_grid(grid, CELL_VIEW.NEUTRAL)
	reset_meta_cells(grid)
	var atkRange = select_range(grid, selected._atk_r_max, selected._x, selected._y)
	var targets = []
	var ndx = 0
	for (var i = 0; i < array_length_1d(atkRange); i++) {
		var cell = atkRange[i]
		if cell._occupant == noone continue
		if cell._x == selected._x and cell._y == selected._y continue
		targets[ndx++] = cell
	}
	if array_length_1d(targets) == 0 {
		change_state(machine, "DEACTIVATE_UNIT")
		exit
	}
	apply_view_to_cells(game._main._grid, targets, CELL_VIEW.ATTACK)
	put_var(machine, game._var_key_cell_range, targets)
	exit
}

var input = game._main._input_reg

if not input._space_d exit

var cursor = game._main._cursor
var range = get_var(machine, game._var_key_cell_range)
show_debug_message("Cursor: " + string(cursor._x) + "," + string(cursor._y))
var cell = find_cell_in_range(range, cursor._x, cursor._y) //If cursor is on moveable cell

if cell == noone exit

show_debug_message("cells attacking")
apply_view_to_grid(grid, CELL_VIEW.NEUTRAL)
clear_var(machine, game._var_key_cell_range)
change_state(machine, "DEACTIVATE_UNIT")