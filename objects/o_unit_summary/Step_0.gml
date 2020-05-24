/// @description Insert description here
// You can write your code in this editor
var unit = get_unit_at_i_pos(get_cell_selector())

var isVisible = false
if unit != noone {
	_name_element._text = unit._name
	_hp_element._text = concat(unit._curr_hp, "/", unit._max_hp)
	isVisible = true
}

toggle_visible(_window, isVisible)
toggle_visible(_name_element, isVisible)
toggle_visible(_hp_element, isVisible)

visible = isVisible