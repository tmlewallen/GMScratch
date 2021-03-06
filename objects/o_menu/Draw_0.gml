/// @description Insert description here
// You can write your code in this editor

draw_window(x, y, _w, _h, c_white)
var mouseOver = noone
var mx = mouse_x
var my = mouse_y

for (var i = 0; i < array_length_1d(_options); i++) { 
	_options[i]._hl.visible = false
}

if point_in_rectangle(mx, my, x, y, x + _w, y + _h) {
	for (var i = 0; i < array_length_1d(_options); i++) {
		var opt = _options[i]
		var xx = opt.x
		var yy = opt.y
		var xxx = xx + opt._w
		var yyy = yy + opt._h
		if point_in_rectangle(mx, my, xx, yy, xxx, yyy) {
			opt._hl.visible = true
			mouseOver = opt
			break
		}
	}
}
if mouseOver != noone {
	if get_confirm_pressed() { 
		send_signal(_target, mouseOver._text, id)	
	}
}