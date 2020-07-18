#nim compile --run yielding.nim
#nim c -r yielding.nim

# We have an 'iterator' construct instead of 'proc' for yielding values:
iterator counter(start, finish, step: int): int =
    # Note we *CAN'T* use 'result' in iterators!
    var ret_val = start
    while (ret_val <= finish):
        yield ret_val
        ret_val += step
        
for i in counter(1, 10, 2):
    echo "i = ", i