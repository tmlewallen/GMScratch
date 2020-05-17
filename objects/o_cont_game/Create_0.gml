/// @description Insert description here
// You can write your code in this editor
_machine = state_machine_init(id)
put_state(_machine, "INIT", st_init_game)
put_state(_machine, "CHANGE_TURN", st_change_turn)
put_state(_machine, "CHECK_MAP", st_check_map)
put_state(_machine, "SELECT_UNIT", st_select_unit)
put_state(_machine, "MOVE_UNIT", st_move_unit)
put_state(_machine, "ATTACK_UNIT", st_attack_unit)
put_state(_machine, "DEACTIVATE_UNIT", st_deactivate_unit)
put_state(_machine, "SHOW_OPTIONS", st_show_options)

start_machine(_machine, "INIT")