names = ["Maggie", "Gus", "Andrew"]

for name in names: 
	statement = ' '.join(['Hello there', name])
	print(statement)

print(", ".join(names))

who = "Maggie"
how_many = 12
print("{} bought {} apples today!".format(who, how_many))