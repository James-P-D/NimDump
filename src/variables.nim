#nim compile --run variables.nim
#nim c -r variables.nim

# We can declare variables without specifying the type

var some_int = 1
echo "some_int = ", some_int

var some_float = 3.1415
echo "some_float = ", some_float

var some_other_float = 10 / 3
echo "some_other_float = ", some_other_float

var some_string = "hello"
echo "some_string = ", some_string

var some_char = 'x'
echo "some_char = ", some_char

# We can also specify a type
var some_other_int: int = 1234
echo "some_other_int = ", some_other_int
var some_bool: bool = false
echo "some_bool = ", some_bool

# Variables are mutable by default
some_other_int = 4321
echo "some_other_int = ", some_other_int

# We can assign multiple variables to the same value
# (Note that changing 'z' WILL NOT change 'x' or 'y')
var x, y, z = 3
echo "x = ", x
echo "y = ", y
echo "z = ", z

# We can use underscore for a comma for large numbers
var million = 1_000_000
echo "million = ", million

# We can use 'e' notation for large number also
var big_number = 12e34
echo "big_number = ", big_number

# We can declare hex, oct, bin numbers:
# (Note there is no leading-zero octal horriblness! :D)
var hex_number = 0xFFFF
var oct_number = 0o77
var bin_number = 0b11111111
echo "hex_number = ", hex_number
echo "oct_number = ", oct_number
echo "bin_number = ", bin_number

# Identifiers are case and underscore insensitive after the first character.
# This allows us to call external non-Nim libraries which use camelCase/PascalCase/something_else
# without having to change whatever naming convention we are using in our Nim program.

var foo_bar = 1
echo "foo = ", foo_bar

foobar += 1
f_o_o_b_a_r += 1
fOO_BAR += 1
echo "foo = ", foo_bar

# We can declare constants
const pi = 3.1415

#pi = 3.0 # We can't do this, because 'pi' is const

# We can declare immutable variables with 'let'
let my_number = 1234
echo "my_number = ", my_number
# This would cause an error
#my_number = my_number * 10

# Nim has a whole bunch of different sized ints we can use:
# int int8 int16 int32 int64 uint uint8 uint16 uint32 uint64.
# ..and the same for floats:
# float float32 float64