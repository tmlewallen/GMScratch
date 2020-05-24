/// @description Draw the goods
// You can write your code in this editor
if not _container draw_window(x,y,_w,_h, _c)

for (var i = 0; i < array_length_1d(_elements); i++) {
	var el = _elements[i]
	var xy = calculate_relative_position(x,y,_w,_h, el._rel_pos)
	el.x = xy[0]
	el.y = xy[1]
	with (el) event_user(USER_EVENT.DRAW)
}