print("first strings")
print("Second string with a line break \n")
print("This string is \"cool\"")

phrase = "Python strings are neat!"
print(phrase)

# Contatination 
print(phrase + " is a "+ phrase)

# function on strings
print(phrase.lower())
print(phrase.split()) # splits a string into a an array
print(phrase.title())
print(phrase.upper())
print(phrase[1])
print(phrase[1: 4])

# Formatted strings
first_name = "Andrew"
last_name = "Gus"
msg = f'{first_name} [{last_name}] is learning python'

print(msg)

print(len(msg))

