""" Pick a random restaurant from Restaurants and prints it out """
import sys


def main_menu():
    while True:
        answer = input(""" -> Pick an option:
    Pick One:
    1: Pick a restaurant
    2: Exit
        >>>""")
        print(f"You selected {answer}")

        answer = answer.strip()

        try:
            answer_dict = {
                "1": "to stuff",
                "2": exit_picker
            }

            answer_dict.get(answer)()

        except TypeError:
            print(f"{answer} is not a valid option, please type 1 or 2")


def exit_picker():
    sys.exit(0)


if __name__ == "__main__":
    main_menu()