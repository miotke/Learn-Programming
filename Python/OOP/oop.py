# Object Oritented Programming with Python
# Using Corey Schafer's YouTube video course

class Employee:
    def __init__(self, first, last, pay):
        self.first = first
        self.last = last
        self.pay = pay
        self.email = first + '.' + last + '@company.com'


    def full_name(self):
        return f"{self.first} {self.last}"


emp_1 = Employee('Andrew', 'Miotke', 5000)
emp_2 = Employee('Gus', 'Maggie', 70000)

print(emp_1.email)
print(emp_2.email)
print(emp_1.full_name())
