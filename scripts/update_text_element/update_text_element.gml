/// @desc updates the text in a text element
/// @param {i_text_element} textElement
/// @param {string} text

var ndx = 0
var element = argument[ndx++]
var txt = argument[ndx++]

assert_type(element, i_text_element, "Must be a text element")

element._text = txt
with (element) event_user(USER_EVENT.CONSTRUCTOR)