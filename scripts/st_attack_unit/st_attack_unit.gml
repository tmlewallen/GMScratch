/// @desc Handles object attacks
/// @param {object_id} game context object 
/// @param {transition} transisiton is the machine transitioning to this state
/// @param {o_machine} machine the state machine

var game = argument0
var transition = argument1
var machine = argument2

assert_st_input(game, machine, o_game)

var grid = get_grid()
var selected = get_var(machine, V_K_GAME__SELECTED)

if not instance_exists(selected) {
	show_debug_message("Selected unit does not exist") 
	change_state(machine, ST_CHECK_MAP)
}

if transition {
	apply_view_to_grid(grid, CELL_VIEW.NEUTRAL)
	reset_meta_cells(grid)
	var atkRange = select_range(selected._atk_range, selected._x, selected._y, grid)
	var targets = []
	var ndx = 0
	for (var i = 0; i < array_length_1d(atkRange); i++) {
		var cell = atkRange[i]
		if cell._occupant == noone continue
		if cell._x == selected._x and cell._y == selected._y continue
		targets[ndx++] = cell
	}
	if array_length_1d(targets) == 0 {
		change_state(machine, ST_DEACTIVATE_UNIT)
		exit
	}
	apply_view_to_cells(grid, targets, CELL_VIEW.ATTACK)
	put_var(machine, V_K_GAME__CELL_RANGE, targets)
	exit
}

if not get_confirm_pressed() exit

var cursor = get_cell_selector()
var range = get_var(machine, V_K_GAME__CELL_RANGE)
dbg(concat("Cursor: ", string(cursor._x), ",", string(cursor._y)))
var cell = find_cell_in_range(range, cursor._x, cursor._y) //If cursor is on moveable cell

if cell == noone exit

show_debug_message("cells attacking")
apply_view_to_grid(grid, CELL_VIEW.NEUTRAL)
clear_var(machine, V_K_GAME__CELL_RANGE)
change_state(machine, ST_DEACTIVATE_UNIT)