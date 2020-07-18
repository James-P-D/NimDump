#nim compile --run hello.nim
#nim c -r hello.nim

echo "What's your name? "
var name: string = readLine(stdin)
echo "Hi, ", name, "!"

# comments are like this

var foo = 123 ## Document comments start with two '#'s

#[ We can also have multi-line comments.
   and even better... #[ comments can be
   embedded in one-another ]#
 ]#