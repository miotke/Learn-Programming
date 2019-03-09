import random 

play_again = True
ask_to_play_again = input("Play again: ")

while ask_to_play_again == "yes":
    dice_one = random.randint(1, 6)
    dice_two = random.randint(1, 6)
    print(f"Dice One: {dice_one}, Dice Two: {dice_two}")

