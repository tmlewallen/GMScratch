/// @description Insert description here
// You can write your code in this editor
if not _container draw_window(x,y,_w,_h, c_white)

var offsetY = y
for (var i = 0; i < array_length_1d(_elements); i++) {
	var el = _elements[i]
	el.x = x
	el.y = offsetY
	offsetY += el._h
	with (el) event_user(USER_EVENT.DRAW)
}