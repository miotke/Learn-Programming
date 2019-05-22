class Car:
    def __init__(self, color, number_of_doors):
        self.color = color
        self.number_of_doors = number_of_doors

    def volkswagen_gti(self):
        print(f"The GTI is {self.color} with {self.number_of_doors} doors")


c = Car("red", 2)
c.volkswagen_gti()
