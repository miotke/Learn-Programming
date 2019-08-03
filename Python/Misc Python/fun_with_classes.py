class Car:
    def __init__(self, color, type_of_car, number_of_doors):
        self.color = color
        self.number_of_doors = number_of_doors
        self.type_of_car = type_of_car



class Volkswagen(Car):
    def __init__(self, bolt_pattern):
        self.bolt_pattern = bolt_pattern

    def gti(self):
        pass


class Maths:
    def __init__(self):
        self.x = 5
        self.y = 5


    def addition(self):
        return self.x + self.y


    def multiply_stuff(self):
        z = (self.x * self.y) * (self.x + self.y)
        return z

    def print_results(self):
        print(self.addition())
        print(self.multiply_stuff())

m = Maths()
m.print_results()

class Elements:
    """ Playing with variable naming within the __init__ method """
    def __init__(self, color, doors):
        self.colors = color
        self.number_of_doors = doors

    def show_color(self):
        # self.colors = "red"
        # self.number_of_doors = 4
        named_color = f"the color is {self.colors}"
        named_doors = f"The number of doors is {self.number_of_doors}"
        print(named_color)
        print(named_doors)

e = Elements("blue", 2)
e.show_color()

