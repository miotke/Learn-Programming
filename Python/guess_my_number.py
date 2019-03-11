number_to_guess = 1

# this shouldbe a for loop, this needs to be a random int
for number in range(1, 10):
    number_to_guess = number
    print(number_to_guess)

users_number = input("Guess a number: ")

if number_to_guess == users_number:
    print(f"You guessed right. Your number: {users_number}, Computer's number: {number_to_guess}")
else:
    print(f"Better luck next time. Computer number: {number_to_guess}")
