/// @desc Handles object movement
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
	var range = select_range(grid, selected._mov_r, selected._x, selected._y)
	apply_view_to_cells(game._main._grid, range, CELL_VIEW.MOVE)
	put_var(machine, game._var_key_cell_range, range)
	exit
}

var inputReg = game._main._input_reg

if inputReg._esc_d {
	apply_view_to_grid(grid, CELL_VIEW.NEUTRAL)
	reset_meta_cells(grid)
	clear_var(machine, game._var_key_cell_range)
	change_state(machine, "SELECT_UNIT")
	exit
}

if not inputReg._space_d {
	exit
}

var cursor = game._main._cursor
var range = get_var(machine, game._var_key_cell_range)
show_debug_message("Cursor: " + string(cursor._x) + "," + string(cursor._y))
var cell = find_cell_in_range(range, cursor._x, cursor._y) //If cursor is on moveable cell

if cell == noone exit

if move_unit_to(grid, selected, cell._x, cell._y, true) {
	apply_view_to_grid(grid, CELL_VIEW.NEUTRAL)
	reset_meta_cells(grid)
	change_state(machine, "ATTACK_UNIT")
}