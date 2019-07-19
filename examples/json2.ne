json -> element

value -> object
value -> array
value -> string
value -> number
value -> "true"
value -> "false"
value -> "null"

object -> "{" ws "}"
object -> "{" members "}"

members -> member
members -> member "," members

member -> ws string ws ":" element

array -> "[" ws "]"
array -> "[" elements "]"

elements -> element
elements -> element "," elements

element -> ws value ws

string -> "\"" characters "\""

characters -> null
characters -> character characters

character -> [^\"\\]
character -> "\\" escape

escape -> "\""
escape -> "\\"
escape -> "/"
escape -> "b"
escape -> "f"
escape -> "n"
escape -> "r"
escape -> "t"
escape -> "u" hex hex hex hex

hex -> digit
hex -> [A-Fa-f]

number -> integer fraction exponent

integer -> digit
integer -> onenine digits
integer -> "-" digit
integer -> "-" onenine digits

digits -> digit
digits -> digit digits

digit -> "0"
digit -> onenine

onenine -> [1-9]

fraction -> null
fraction -> "." digits

exponent -> null
exponent -> [eE] sign digits

sign -> null
sign -> "+"
sign -> "-"

ws -> null
ws -> " " ws
ws -> "\t" ws
ws -> "\n" ws
ws -> "\b" ws