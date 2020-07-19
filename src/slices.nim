#nim compile --run slices.nim
#nim c -r slices.nim

var str = "This is an example string"
# Get slice from index 11 to 17
echo "'", str[11..17], "'"              # 'example'

# Get slice from index 11 to 8 from the end
echo "'", str[11..^8], "'"              # 'example'

# Get slice from index 14 from the end to 8 from the end
echo "'", str[^14..^8], "'"             # 'example'

# We can also replace a slice with something else, which may not even be the same size
str[11..17] = "exemplary"
echo str                                # This is an example string