/// @description Insert description here
// You can write your code in this editor

_root_pane.x = x
_root_pane.y = y
var unit = get_unit_at_i_pos(get_cell_selector())
var isVisible = false
if unit != noone {
	_name_element._text = unit._name
	_hp_element._text = concat(unit._curr_hp, "/", unit._max_hp)
	isVisible = true
}
if isVisible {
	with (_root_pane) event_user(USER_EVENT.DRAW)
}
//We need a different variable for visible becuase 
//if the built-in variable is 'false' then this step isn't executed
_visible = isVisible 

var ir = get_input_reg()
if ir._right_p {
	x += 5
}