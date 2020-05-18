/// @desc shows menu with given options
/// @param {object_id} ctx context object 
/// @param {transition} transisiton is the machine transitioning to this state
/// @param {o_machine} machine the state machine

var game = argument0
var transition = argument1
var machine = argument2

assert_st_input(game, machine, o_game)

var unit = get_var(machine, V_K_GAME__SELECTED)
var options = get_var(machine, V_K_GAME__OPTIONS)

// TODO should we use a "swap modes" helper here? 
toggle_visible(get_cell_selector(), false)
toggle_visible(get_cursor(), true)

create_dialog_menu(unit.x, unit.y, machine, options)

change_to_wait_for_signal(machine, ST_OPTION_CHOICE, V_K_GAME__CHOICE)