# Object Oritented Programming with Python
# Using Corey Schafer's YouTube video course
# Video 3

import datetime

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


    # overrides the class variable raise_amount to the number that is passed in for amount
    @classmethod
    def set_raise_amount(cls, amount):
        cls.raise_amount = amount


    # Alternative constructor
    @classmethod
    def from_string(cls, emp_str):
        first, last, pay = emp_str.split('-')
        return cls(first, last, pay)


    # static methods don't operate on the instance or the class
    @staticmethod
    def is_work_day(day):
        if day.weekday() == 5 or day.weekday() == 6:
            return False
        return True



emp_1 = Employee('Andrew', 'Miotke', 5000)
emp_str_1 = "Andrew-Miotke-5000"
emp_2 = Employee('Gus', 'Gus', 70000)
emp_3 = Employee("Maggie", "Saunders", 8000)

my_date = datetime.date(2019, 5, 27)
print(Employee.is_work_day(my_date))