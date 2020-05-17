/// @description Insert description here
// You can write your code in this editor
draw_set_font(f_menu)
var textPadding = 0
_options = []
var ndx = 0
_option_height = string_height("one")
with (instance_create_layer(x,y,L_VIEW, o_window_option)) {
	_text = "one"
	_w = 250
	_h = other._option_height
	_padding = [textPadding,textPadding, textPadding, textPadding]
	other._options[ndx++] = id
	depth = other.depth - 1
}

with (instance_create_layer(x,y,L_VIEW, o_window_option)) {
	_text = "two"
	_w = 250
	_h = other._option_height
	_padding = [textPadding,textPadding, textPadding, textPadding]
	other._options[ndx++] = id
	depth = other.depth - 1
}

with (instance_create_layer(x,y,L_VIEW, o_window_option)) {
	_text = "three"
	_w = 250
	_h = other._option_height
	_padding = [textPadding,textPadding, textPadding, textPadding]
	other._options[ndx++] = id
	depth = other.depth - 1
}

var adjX = x;
var adjY = y;
_option_height = string_height("one")
for (var i = 0; i < array_length_1d(_options); i++) {
	with (_options[i]) {
		x = adjX
		y = adjY
		adjY += other._option_height
	}
}