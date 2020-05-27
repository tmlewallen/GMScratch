/// @description Draw
// You can write your code in this editor
if not _initialized {
	event_user(USER_EVENT.CONSTRUCTOR)
}
if _counter < string_length(_final_text) {
	if _speed_counter mod TXT_SP == 0 {
		_buffer += string_char_at(_final_text, _counter)
		_counter++
	}
	_speed_counter++
}

draw_text_color(x,y,_buffer,_c,_c,_c,_c, 1)
