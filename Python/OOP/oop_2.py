# Object Oritented Programming with Python
# Using Corey Schafer's YouTube video course
# Video 2


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


emp_1 = Employee('Andrew', 'Miotke', 5000)
emp_2 = Employee('Gus', 'Gus', 70000)
emp_3 = Employee("Maggie", "Saunders", 8000)

print(Employee.num_of_employees)