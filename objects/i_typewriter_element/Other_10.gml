/// @description Initialize
// You can write your code in this editor
if not _constrained {
	_w = string_width(_text)
	_h = string_height(_text)
	_final_text = _text
	_buffer = ""
} else {
	_final_text = _text
	var charW = string_width("0")
	var maxLen = floor(_w / charW) // 
	var tokens = tokenize(_text)
	_final_text = ""
	var buffer = ""
	for (var i = 0; i < array_length_1d(tokens); i++) {
		var token = tokens[i]
		var tokenLen = string_length(token)
		if string_length(buffer) + tokenLen < maxLen {
			buffer += concat(token, " ")
		} else {
			_final_text += concat(buffer, "\n", token, " ")
			buffer = ""
		}
	}
	_final_text += buffer
	_h = string_height(_final_text)
}
_initialized = true