# Object Oritented Programming with Python
# Using Corey Schafer's YouTube video course
# Video 6

# Property Decorators, Getter, Setter, Deleter


class Employee:
    def __init__(self, first, last):
        self.first = first
        self.last = last

    @property
    def full_name(self):
        return f"{self.first} {self.last}"


    @property
    def email(self):
        return f"{self.first}.{self.last}@company.com"


    @full_name.setter
    def full_name(self, name):
        first, last = name.split(" ")
        self.first = first
        self.last = last


    @full_name.deleter
    def full_name(self):
        print("Delete Name")
        self.first = None
        self.last = None


emp_1 = Employee('John', 'Smith')

emp_1.full_name = "Gus Gusgus"

print(emp_1.first)
print(emp_1.email)
print(emp_1.full_name)

del emp_1.full_name