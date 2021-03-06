/// @desc Initializes game
/// @param {object_id} ctx context object 
/// @param {transition} transisiton is the machine transitioning to this state
/// @param {o_machine} machine the state machine

var game = argument0
var transition = argument1
var machine = argument2

assert_st_input(game, machine, o_game)

#macro ST_CHANGE_TURN "CHANGE_TURN"
#macro ST_CHECK_MAP "CHECK_MAP"
#macro ST_SELECT_UNIT "SELECT_UNIT"
#macro ST_MOVE_UNIT "MOVE_UNIT"
#macro ST_ATTACK_UNIT "ATTACK_UNIT"
#macro ST_DEACTIVATE_UNIT "DEACTIVATE_UNIT"
#macro ST_SHOW_OPTIONS "SHOW_OPTIONS"
#macro ST_OPTION_CHOICE "OPTION_CHOICE"

#macro V_K_GAME__CELL_RANGE "CELL_RANGE"
#macro V_K_GAME__OPTIONS "OPTIONS"
#macro V_K_GAME__SELECTED "SELECTED"
#macro V_K_GAME__CHOICE "CHOICE"

put_state(machine, ST_CHANGE_TURN, st_change_turn)
put_state(machine, ST_CHECK_MAP, st_check_map)
put_state(machine, ST_SELECT_UNIT, st_select_unit)
put_state(machine, ST_MOVE_UNIT, st_move_unit)
put_state(machine, ST_ATTACK_UNIT, st_attack_unit)
put_state(machine, ST_DEACTIVATE_UNIT, st_deactivate_unit)
put_state(machine, ST_SHOW_OPTIONS, st_show_options)
put_state(machine, ST_OPTION_CHOICE, st_option_choice)


var enemies = []

with (instance_create_layer(0,0,L_VIEW, o_enemy)) {
	_x = 2
	_y = 1
	_move_range = 4
	_atk_range = 1
	_max_hp = 10
	_curr_hp = _max_hp
	_str = 3
	_def = 2
	_name = "Bradlee"
	enemies[0] = id
}


var players = []
with (instance_create_layer(0,0,L_VIEW, o_player)) {
	_x = 3
	_y = 3
	_move_range = 4
	_atk_range = 1
	_max_hp = 20
	_curr_hp = _max_hp
	_str = 2
	_def = 2
	_name = "Roger"
	players[0] = id
}

for (var i = 0; i < array_length_1d(players); i++) {
	var player = players[i]
//To prevent weird conflicts with moving multiple units coming from the 
//same position in before they 'occupy' anything, this can move them all without occupying
//then come back and move them again to occupy
	move_unit_to_i_pos(player, player, false)
	move_unit_to_i_pos(player, player, true)
}

for (var i = 0; i < array_length_1d(players); i++) {
	var enemy = enemies[i]
	move_unit_to_i_pos(enemy, enemy, false)
	move_unit_to_i_pos(enemy, enemy, true)
}

game._players = players
game._enemies = enemies
game._turn = TURN.PLAYER
var c = get_camera()
var xy = calculate_relative_position(0,0, c._view_w, c._view_h, RELATIVE_POSITION.TOP_CENTER)
game._window = instance_create_layer(xy[0],xy[1], L_DIALOG, o_unit_summary)
//toggle_visible(game._window, false)

calibrate_grid()
change_state(machine, ST_CHANGE_TURN)