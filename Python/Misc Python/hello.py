# Creates a class
class Hello: 

	hello = "Hello! This is me trying to learn python...kind of"
	stringWithEscape = "Hello this is me trying to escape they\'re words."
	printFloat = float(2)
	printMoreFloat = float(9).is_integer()
	printAnotherFloat = float(10.2).is_integer()


# creates an instance of the Hello class and calls the single variable in the Hello class.
createClassInstance = Hello()
print(createClassInstance.hello)
print(createClassInstance.stringWithEscape)
print(createClassInstance.printFloat)
print(createClassInstance.printMoreFloat)
print(createClassInstance.printAnotherFloat)