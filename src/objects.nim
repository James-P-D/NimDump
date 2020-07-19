#nim compile --run objects.nim
#nim c -r objects.nim

type
  Person = object
    name: string
    age: int

proc display_person(p: Person) =
    echo p.name, " is ", p.age, " years old"

var person1 = Person(name: "Peter", age: 30)
display_person(person1)

# Assigning an existing object to a new object creates a copy...
var person2 = person1
person2.name = "Paul"
# .. Therefore, chaning person2's name to 'Paul', doesn't affect person1
display_person(person1)
display_person(person2)

