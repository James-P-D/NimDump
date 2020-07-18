#nim compile --run procedures.nim
#nim c -r procedures.nim

# We can create procedures which take no paramters and return nothing
proc say_hello() =
    echo "hello"

# If we are passing parameters we *must* specify the type. Untyped parameters
# used to be supported in Nim, but not anymore! yay!
proc display_numbers(x, y: int) =
    echo "x = ", x
    echo "y = ", y

# We can return values
proc add_numbers(x, y: int): int =    
    return x + y

# All procedures also have an implicit 'result' variable for storing the return values
# If we assign to it, we don't need to 'return' anything
proc multiply_numbers(x, y: int): int = 
    result = x * y

# We can have optional parameters with default values
proc increment_number(n: int, i: int = 1): int =
    result = n + i

# Parameters are immutable, so cannot be changed! This won't work
#proc try_to_double(n: int) =
#    n = n * 2

# If we want to be able to change the value of parameters, we need to include 'var':
proc double_number(n: var int) =
    n = n * 2

# We can specify that the return value can be 'discard'ed implicitly
proc add_but_dont_care(x, y: int): int {.discardable.} =
    return x + y    

# We can pass differnt data types
proc display_person(name: string, age: int, height: float) =
    echo name, " is ", age, " years old and ", height, "m tall"

# We can function (procedure) overload
proc overloaded_add(a: int): int =
    return a
proc overloaded_add(a, b: int): int =
    return a + b
proc overloaded_add(a, b, c: int): int =
    return a + b + c
    
say_hello()
display_numbers(12, 34)
echo "12 + 34 = ", add_numbers(12, 34)
echo "2 * 3 = ", multiply_numbers(2, 3)
echo "5 increment = ", increment_number(5)
echo "5 increment by 2 = ", increment_number(5, 2)
# Because paramters are immutable, this won't work
#var n = 10
#echo "n before function = ", n
#try_to_double(n)
#echo "n after function = ", n

# Note this only works because we declare 'n' using 'var'. If we used 'let'
# we'd create an immutable variable and we wouldn't be able to change it,
# even in the body of double_number()
var n = 10
echo "n before function = ", n
double_number(n)
echo "n after function = ", n

# If a procedure returns a value, we *must* receive it. The following won't work:
#add_numbers(1, 2)
# If we don't care about the return value, we must use 'discard'
discard add_numbers(1, 2)
# We can also use {.discardable.} in the procedure declaration, so that 'discard' is *not* required
add_but_dont_care(1, 2)

# Note we don't have to pass parameters in the order they are declared in the procedure
# if we specify them by name
display_person(height = 1.83, age = 33, name = "Robert")

echo "1 = ", overloaded_add(1)
echo "1 + 2 = ", overloaded_add(1, 2)
echo "1 + 2 + 3 = ", overloaded_add(1, 2, 3)
