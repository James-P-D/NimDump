#nim compile --run pointers_and_references.nim
#nim c -r pointers_and_references.nim

#[
type
  Node = ref object
    le, ri: Node
    data: int
var
  n: Node
new(n)
n.data = 9
]#

var x: int = 5
var y: ptr int = x.addr

echo "x = ", x
echo "y = ", y[]
x = x*2
echo "x = ", x
echo "y = ", y[]
