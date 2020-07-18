#nim compile --run operators.nim
#nim c -r operators.nim

# operators can be overloaded (!)
proc `$`(x, y: int): int =
    return x * y
    
echo "2 $ 5 = ", (2 $ 5)

# Infact, all the operators in Nim can be called as prefix procedures, rather than as infix operators:
echo "adding 5 and 7 = ", `+`(5, 7)
