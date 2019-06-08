#!/usr/bin/python3

print(42 == 32)
print(32 == 32)
print(2 != 3)
print(2 != 2)
print("Hello" == "Hello")
print(42 < 32)
print(32 >= 32)

# = assigns a value
# == does comparison

username = "gus"
password = "gusthefrenchel"

if username == "gus":
    print("Hello Gus")
    if password == "gusthefrenchel":
        print("Access Granted")
    else:
        print("wrong password")
elif username == "Kramer":
    print("Unknown user")
else:
    print("create an account")


computer_type = "Mac"

if computer_type == "Mac":
    print("That's probably a great computer") 
else:
    print("Get rid of that Windows cruft, yo!")
