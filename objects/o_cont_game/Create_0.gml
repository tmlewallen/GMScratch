/// @description Insert description here
// You can write your code in this editor
_machine = state_machine_init(id)
put_state(_machine, "INIT", init_game)
put_state(_machine, "CHANGE_TURN", change_turn)
put_state(_machine, "CHECK_MAP", check_map)
put_state(_machine, "SELECT_UNIT", select_unit)
put_state(_machine, "MOVE_UNIT", move_unit)
put_state(_machine, "ATTACK_UNIT", attack_unit)
put_state(_machine, "DEACTIVATE_UNIT", deactivate_unit)

start_machine(_machine, "INIT")