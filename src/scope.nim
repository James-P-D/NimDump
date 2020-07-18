#nim compile --run scope.nim
#nim c -r scope.nim

# Variable scoping works as expected:
#while false:
#    var x = "hi"
#echo x # does not work because 'x' no longer exists

# We can also use 'block' to create scopes
block:
    var x = 123
#x = 999 # This would also cause an error

# We can 'break' out of loops or blocks.
# Note that blocks can have names so we 'break' out of specific levels of
# parent scope (like Rust!)
block myblock:
    echo "entering block"
    while true:
        echo "looping"
        break # leaves the loop, but not the block
    echo "still in block"
block myblock2:
    echo "entering block"
    while true:
        echo "looping"
        break myblock2 # leaves the block (and the loop)
    echo "still in block"

#The when statement is almost identical to the if statement, but with these differences:
# * Each condition must be a constant expression since it is evaluated by the compiler.
# * The statements within a branch do not open a new scope.
# * The compiler checks the semantics and produces code only for the statements that belong to the first condition that evaluates to true.
#The when statement is useful for writing platform specific code, similar to the #ifdef construct in the C programming language.    
when system.hostOS == "windows":
    echo "running on Windows!"
elif system.hostOS == "linux":
    echo "running on Linux!"
elif system.hostOS == "macosx":
    echo "running on Mac OS X!"
else:
    echo "unknown operating system"    