/// @description Insert description here
// You can write your code in this editor
var w = 100
var h = 100
var elements = []
var ndx = 0

with (instance_create_layer(x,y,L_DIALOG, i_list_pane)) {
	_rel_pos = RELATIVE_POSITION.TOP_LEFT
	_w = w
	_h = h
	_parent = other.id
	depth = other.depth - 1
	for (var i = 0; i < 3; i++) {
		with (instance_create_layer(other.x, other.y, L_DIALOG, i_text_element)) {
			_text = string(i)
			other._elements[i] = id
			depth = -5
		}
	}
	elements[ndx++] = id
}

_w = w
_h = h
_elements = elements