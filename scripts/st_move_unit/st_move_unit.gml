/// @desc Handles object movement
/// @param {object_id} game context object 
/// @param {transition} transisiton is the machine transitioning to this state
/// @param {o_machine} machine the state machine

var game = argument0
var transition = argument1
var machine = argument2

assert_st_input(game, machine, o_game)

if transition {
	set_cursor_mode(CURSOR_MODE.CELL_SELECT)
}

var grid = get_grid()
var selected = get_var(machine, V_K_GAME__SELECTED)

if not instance_exists(selected) {
	dbg("Selected unit does not exist") 
	change_state(machine, ST_CHECK_MAP)
}

if transition {
	apply_view_to_grid(grid, CELL_VIEW.NEUTRAL)
	reset_meta_cells(grid)
	var range = select_range(selected._move_range, selected._x, selected._y, grid)
	apply_view_to_cells(grid, range, CELL_VIEW.MOVE)
	put_var(machine, V_K_GAME__CELL_RANGE, range)
	exit
}

if get_back_pressed() {
	apply_view_to_grid(grid, CELL_VIEW.NEUTRAL)
	reset_meta_cells(grid)
	clear_var(machine, V_K_GAME__CELL_RANGE)
	change_state(machine, ST_SELECT_UNIT)
	exit
}

if not get_confirm_pressed() exit

var cursor = get_cell_selector()
var range = get_var(machine, V_K_GAME__CELL_RANGE)
dbg(concat("Cursor: ", string(cursor._x), ",", string(cursor._y)))
var cell = find_cell_in_range(range, cursor._x, cursor._y) //If cursor is on moveable cell

if cell == noone exit

if move_unit_to_x_y(selected, cell._x, cell._y, true) {
	apply_view_to_grid(grid, CELL_VIEW.NEUTRAL)
	reset_meta_cells(grid)
	change_state(machine, ST_ATTACK_UNIT)
}