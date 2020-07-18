#nim compile --run operators.nim
#nim c -r operators.nim

# operators can be overloaded (!)

proc `$`(x: int): int =
    return x * 2
    
echo "$5 = ", ($ 5)
