#nim compile --run strings.nim
#nim c -r strings.nim

var str1 = "hello"
var str2 = "bye"

echo "str1 = ", str1
echo "str2 = ", str2

# We can get the length of strings with 'len()'
echo "length of str1 = ", len(str1)

# We can concatonate strings with '&'
var str3 = str1 & str2
echo "str3 = ", str3

# We can get the zero-indexed char from a string
echo "0th char in str3 = ", str3[0]