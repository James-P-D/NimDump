#nim compile --run arrays.nim
#nim c -r arrays.nim

# We can create arrays
var int_array: array[5, int]
echo "int_array = ", int_array
# Arrays are zero-indexed by default
int_array[1] = 99
echo "int_array = ", int_array

# We can get the length
echo "len(int_array) = ", len(int_array)

# We can also declare arrays that are not zero indexed. In this case indexed from 5 to 10 (not 5 to 9)
var five_to_ten_array: array[5..10, int]
echo "five_to_ten_array = ", five_to_ten_array
five_to_ten_array[5] = 55    # Set first element
five_to_ten_array[10] = 1010 # Set last element
echo "five_to_ten_array = ", five_to_ten_array

# We can loop between array bounds
echo "Between bounds.."
for i in low(int_array)..high(int_array):
  echo "int_array[", i, "] = ", int_array[i]
  
# We can for-each
echo "For each.."
for i in int_array:
    echo "int_array item = ", i

# We can create multi-dimensional arrays
var two_dim_array: array[5, array[2, int]]
echo "two_dim_array = ", two_dim_array
two_dim_array[0][0] = 99
echo "two_dim_array = ", two_dim_array

# We can initialise arrays
var initialised_array: array[3, int] = [1, 2, 3]
echo "initialised_array = ", initialised_array