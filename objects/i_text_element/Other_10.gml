/// @description Initialize
// You can write your code in this editor
if not _constrained {
	_w = string_width(_text)
	_h = string_height(_text)
	_final_text = _text
} else {
	var charW = string_width("0")
	var maxLen = floor(_w / charW)
	if maxLen >= string_length(_text) {
		_final_text = _text
	} else {
		_final_text = string_copy(_text, 1, maxLen)	
	}
}
_initialized = true