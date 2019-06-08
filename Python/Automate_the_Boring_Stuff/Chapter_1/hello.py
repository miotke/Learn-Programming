#!/usr/bin/python3
# Prints hello and asks for name

print("Hello, world!")
print("What's your name?")

my_name = input()

print("It's good to meet you " + my_name)
print("The length of your name is:")
print(len(my_name))

print("What's your age?")
my_age = input()

print("You will be " + str(int(my_age) + 1) + " in a year.")

