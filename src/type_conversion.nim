#nim compile --run type_conversion.nim
#nim c -r type_conversion.nim

var ch: char = 'x'
var st: string = "hello"

# We can convert char to string with '$'
var new_string = $ch

# We can convert from char to int with ord()
var ascii = ord(ch)

# We can convert from int to char with chr()
var some_char = chr(65)
