""" More practice with classes and tests """

class Keyboard:

    switches = {"reds": "Mx Cherry Reds",
                "browns": "Mx Cherry Browns",
                "blues": "Mx Cherry Blues",
                }

    def __init__(self, switch_type, keycap_set, keyboard_type):
        self.switch_type = switch_type
        self.keycap_set = keycap_set
        self.keyboard_type = keyboard_type


    def build_keyboard(self):
        keyboard_type = input("What type of keyboard do you want to build? ")
        switch_type = input("What kind of switches do you want? ")
        keycap_set = input("What key cap set do you want? ")


    def generate_keyboard(self):
        for s in self.switches:
            print(s)