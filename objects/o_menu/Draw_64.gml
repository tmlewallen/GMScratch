/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white)
draw_window(x,y,250,array_length_1d(_options) * _option_height)
draw_set_color(c_white)

if keyboard_check_pressed(vk_space) {
	var mx = mouse_x
	var my = mouse_y
	for (var i = 0; i < array_length_1d(_options); i++) {
		var opt = _options[i]
		var xx = opt.x
		var yy = opt.y
		var xxx = xx + opt._w
		var yyy = yy + opt._h
		if point_in_rectangle(mx, my, xx, yy, xxx, yyy) show_message(opt._text)
	}
}