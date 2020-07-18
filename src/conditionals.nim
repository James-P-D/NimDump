#nim compile --run conditionals.nim
#nim c -r conditionals.nim

# If statements are pretty straight-forward
var age = 20
if age == 18:
    echo "Go drinking"
elif age <= 6:
    echo "Not ready for school"
elif age < 18:
    echo "Go to school"
else:
    echo "Go to work"
  
# We don't have to have an 'else' or 'elif'
if age == 99:
    echo "you're old!"

# If for some reason we need an empty 'else', we can use 'discard'
# which seems to be equivalent to Python's 'pass'
if age == 100:
    echo "you're really, really old!"
else:
    discard

# Like Python, we care about indenting. The following will not compile:    
#if age == 99:
#echo "you're old!"    

# We can have 'switch' statements on ordinal types
var letter = '7'
echo letter, " is..."

case letter
of '!':
    echo "Exclaimation!"
of 'a'..'z':
    echo "lowercase!"
of 'A'..'Z':
    echo "UPPERCASE!"
of '0', '2', '4', '6', '8':
    echo "Even number!"
else:
    echo "Something else I don't care about"

