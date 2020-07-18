#nim compile --run loops.nim
#nim c -r loops.nim

# while loops are straight-forward

echo "while n is greater than zero: "
var n = 5
while n > 0:
    echo "n = ", n
    n -= 1
    
# for loops... counting up:
echo "Counting to ten: "
for i in countup(1, 10):
    echo "i = ", i
# ... and counting down:
echo "Counting to ten: "
for i in countdown(10, 1):
    echo "i = ", i

# We can step by providing a third parameter
echo "Counting to 100 in fives: "
for i in countup(0, 100, 5):
    echo "i = ", i

#We can also use '..' for ranges
echo "negative number range"
for i in (-10)..(-5):
    echo "i = ", i
    
# There's also a 'for-each'
echo "Iterating for-each"
for word in ["apple", "banana", "carrot"]:
    echo "word = ", word

# We can also get the item and the index at the same time:
echo "Index and item"    
for index, item in ["a","b"].pairs:
  echo item, " at index ", index    