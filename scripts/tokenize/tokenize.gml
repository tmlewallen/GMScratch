/// @desc tokenizes a string. Space delimited
/// @param {string} str
#macro DELIMITER " "
var str = argument0

var tokens = []
var ndx = 0
var buffer = ""
for (var i = 1; i <= string_length(str); i++) {
	var char = string_char_at(str, i)
	if char == DELIMITER and buffer != "" {
		tokens[ndx++] = buffer
		buffer = ""
	} else {
		buffer = buffer + char	
	}
}
tokens[ndx++] = buffer

return tokens