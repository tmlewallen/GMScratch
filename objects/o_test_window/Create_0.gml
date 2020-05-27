/// @description Insert description here
// You can write your code in this editor
var w = 500
var h = 100
var elements = []
var ndx = 0

with (instance_create_layer(x,y,L_DIALOG, i_list_pane)) {
	_rel_pos = RELATIVE_POSITION.TOP_LEFT
	_w = w
	_h = h
	_parent = other.id
	depth = other.depth - 1
	for (var i = 0; i < 1; i++) {
		with (instance_create_layer(other.x, other.y, L_DIALOG, i_typewriter_element)) {
			_text = "I spy with my litle eye something small and now Salvador is meowing to get out of the door but he's never been allowed so I don't know what he thinks he's entitled to."
			other._elements[i] = id
			_constrained = true
			_w = w
			depth = -5
		}
	}
	elements[ndx++] = id
}
var tokens = tokenize("one two three four lkajsdfk  ")
for (var i = 0; i < array_length_1d(tokens); i++) {
	show_debug_message(tokens[i])	
}
_w = w
_h = h
_elements = elements