/// @description Insert description here
// You can write your code in this editor

with (instance_create_layer(x, y, L_DIALOG, o_menu_option_hl)) {
	var scales = scale_x_y(sprite_width, sprite_height, other._w, other._h)
	depth = other.depth - 1
	other._hl = id
	image_xscale = scales[0]
	image_yscale = scales[1]
}