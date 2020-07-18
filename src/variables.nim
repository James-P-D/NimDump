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

# Variables are mutable by default
some_other_int = 4321
echo "some_other_int = ", some_other_int

# Identifiers are case and underscore insensitive after the first character.
# This allows us to call external non-Nim libraries which use camelCase/PascalCase/something_else
# without having to change whatever naming convention we are using in our Nim program.

var foo_bar = 1
echo "foo = ", foo_bar

foobar += 1
f_o_o_b_a_r += 1
fOO_BAR += 1
echo "foo = ", foo_bar