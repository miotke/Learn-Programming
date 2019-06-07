# Object Oritented Programming with Python
# Using Corey Schafer's YouTube video course
# Video 5

# Special/Magic methods

class Employee:

    # class variables
    num_of_employees = 0
    raise_amount = 1.04


    def __init__(self, first, last, pay):
        self.first = first
        self.last = last
        self.pay = pay
        self.email = first + '.' + last + '@company.com'

        # No need to change the number of employees per class instance
        Employee.num_of_employees += 1


    def full_name(self):
        return f"{self.first} {self.last}"


    def apply_raise(self):
        self.pay = int(self.pay * self.raise_amount)


    # use for debugging and logging - mostly for other devs
    def __repr__(self):
        return f"Employees({self.first} {self.last} {self.pay})"


    # used to be displayed to the end user
    def __str__(self):
        return f"{self.full_name()} - {self.email}"


    def __add__(self, other):
        return self.pay + other.pay


    def __len__(self):
        return len(self.full_name())



emp_1 = Employee('Andrew', 'Miotke', 50000)
emp_2 = Employee('Gus', 'Gus', 70000)

print(emp_1 + emp_2)
print(len(emp_1))

# print(emp_1)
# print(repr(emp_1))
# print(str(emp_1))
