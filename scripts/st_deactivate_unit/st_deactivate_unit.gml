/// @desc Handles object attacks
/// @param {object_id} game context object 
/// @param {transition} transisiton is the machine transitioning to this state
/// @param {o_machine} machine the state machine

var game = argument0
var transition = argument1
var machine = argument2

assert_st_input(game, machine, o_game)

var unit = get_var(machine, V_K_GAME__SELECTED)
unit._active = false
change_state(machine, ST_CHECK_MAP)