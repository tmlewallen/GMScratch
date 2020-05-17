/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
draw_set_font(f_menu)
var textPadding = [0,0,0,0]
_option_height = string_height("one")
_h = array_length_1d(_options) * _option_height
_w = 0
for (var i = 0; i < array_length_1d(_options); i++) {
	var width = string_width(_options[i])
	_w = max(width, _w)
}

var adjX = x;
var adjY = y;
for (var i = 0; i < array_length_1d(_options); i++) {
	var text = _options[i]
	with (instance_create_layer(adjX, adjY, L_VIEW, o_menu_option)) {
		_text = text
		_h = other._option_height
		_w = other._w
		_padding = textPadding
		other._options[i] = id
		depth = other.depth - 1
		event_user(0)
	}
	adjY += _option_height
}