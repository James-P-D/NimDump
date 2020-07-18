#nim compile --run advanced_types.nim
#nim c -r advanced_types.nim

# We can declare new alias types for existing types
type
  biggestInt = int64      
  biggestFloat = float64  
  
var big_number: biggestInt = 123456
echo "big_number = ", big_number

# We can declare enums
type
  Direction = enum north, east, south, west

var first_direction = south     
echo "first_direction = ", first_direction
var second_direction: Direction = Direction.north     
echo "second_direction = ", second_direction
echo "ord(first_direction) = ", ord(first_direction)

# We can create sub-ranges
type
  SmallPositiveNumbers = range[1..10]
var pos_number: SmallPositiveNumbers = 1
echo "pos_number = ", pos_number
pos_number = 9
echo "pos_number = ", pos_number
# This will fail because it's not a valid value for 'SmallPositiveNumbers'
#pos_number = 11

# We can create sets
type
  CharSet = set[char]
var
  c1: CharSet
  c2: CharSet
c1 = {'a'..'z', '0'..'9'} 
echo "c1 = ", c1
c2 = {'0'..'9'} 
echo "c2 = ", c2

# We can do set union
echo "c1 + c2 = ", c1 + c2
# We can do set intersection
echo "c1 * c2 = ", c1 * c2
# We can do set difference
echo "c1 - c2 = ", c1 - c2

# There's a bunch more stuff for sets:
#[
operation	    meaning
A + B	        union of two sets
A * B	        intersection of two sets
A - B	        difference of two sets (A without B's elements)
A == B	        set equality
A <= B	        subset relation (A is subset of B or equal to B)
A < B	        strict subset relation (A is a proper subset of B)
e in A	        set membership (A contains element e)
e notin A	    A does not contain element e
contains(A, e)	A contains element e
card(A)	        the cardinality of A (number of elements in A)
incl(A, elem)	same as A = A + {elem}
excl(A, elem)	same as A = A - {elem}
]#