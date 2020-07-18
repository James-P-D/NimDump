#nim compile --run sequences.nim
#nim c -r sequences.nim

# Sequences are lists
var int_seq: seq[int]
echo "int_seq = ", int_seq
# We can add
int_seq.add(5)
int_seq.add(10)
echo "int_seq = ", int_seq
echo "len(int_seq) = ", len(int_seq)
# We can insert 99 at position 1
int_seq.insert(99, 1)
echo "int_seq = ", int_seq
# We can get the zeroth element
echo "int_seq[0] = ", int_seq[0]
# We can delete the zeroth element
int_seq.delete(0)
echo "int_seq = ", int_seq

# We can initialise sequences
var new_int_seq: seq[int] = @[100, 200, 300]
echo "new_int_seq = ", new_int_seq

# We can concatonate sequences
var concat_seq = int_seq & new_int_seq
echo "concat_seq = ", concat_seq

