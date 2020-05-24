/// @description Draw the goods
// You can write your code in this editor
draw_window(x,y,_w,_h, c_white)

for (var i = 0; i < array_length_1d(_elements); i++) {
	var el = _elements[i]
	var xy = calculate_relative_position(x,y,_w,_h, el._rel_pos)
	el.x = xy[0]
	el.y = xy[1]
}