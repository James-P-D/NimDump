#nim compile --run hello.nim
echo "What's your name? "
var name: string = readLine(stdin)
echo "Hi, ", name, "!"