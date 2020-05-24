/// @desc makes a unit summary window

var xy = calculate_relative_position(0,0, ROOM_W, ROOM_H, RELATIVE_POSITION.TOP_RIGHT)

var window = instance_create_layer(xy[0], xy[1], L_DIALOG, i_pane)
window._w = 100
window._h = 100
window._c = c_white

var ndx = 0;

var nameElement = instance_create_layer(0,0, L_DIALOG, i_text_element)
nameElement._rel_pos = RELATIVE_POSITION.TOP_LEFT
nameElement.depth = window.depth - 1

var hpElement = instance_create_layer(0,0,L_DIALOG, i_text_element)
hpElement._rel_pos = RELATIVE_POSITION.CENTER_CENTER
hpElement.depth = window.depth - 1

window._elements[ndx++] = nameElement
window._elements[ndx++] = hpElement

_window = window
_name_element = nameElement
_hp_element = hpElement
_root_pane = window