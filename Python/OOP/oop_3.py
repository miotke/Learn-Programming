# Object Oritented Programming with Python
# Using Corey Schafer's YouTube video course
# Video 3


class Employee:

    # class variable
    raise_amount = 1.04


    def __init__(self, first, last, pay):
        self.first = first
        self.last = last
        self.pay = pay
        self.email = first + '.' + last + '@company.com'


    def full_name(self):
        return f"{self.first} {self.last}"


    def apply_raise(self):
        self.pay = int(self.pay * self.raise_amount)


emp_1 = Employee('Andrew', 'Miotke', 5000)
emp_2 = Employee('Gus', 'Maggie', 70000)

print(emp_1.email.lower())
print(emp_2.email)
print(emp_1.full_name())

print(emp_1.pay)
emp_1.apply_raise()
print(emp_1.pay)