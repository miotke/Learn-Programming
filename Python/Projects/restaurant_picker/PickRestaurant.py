"""
Pick a random restaurant from Restaurants and prints it out

This needs to be turned into a class
"""
import sys
from Restaurants import Restaurants


def main_menu():
    while True:
        answer = input(""" -> Pick an option:
    1: Pick a restaurant
    2: List restaurants
    3: Exit
        >>>""")
        print(f"You selected {answer}\n")

        answer = answer.strip()

        try:
            answer_dict = {
                "1": "to stuff",
                "2": list_restaurants,
                "3": exit_picker
            }

            answer_dict.get(answer)()

        except TypeError:
            print(f"{answer} is not a valid option, please type 1, 2, or 3")


def list_restaurants():
    restaurants = Restaurants()
    restaurants.list_restaurants()


def exit_picker():
    sys.exit(0)


if __name__ == "__main__":
    main_menu()