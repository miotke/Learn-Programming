# Object Oritented Programming with Python
# Using Corey Schafer's YouTube video course
# Video 4

# Inheritance

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


class Developer(Employee):
    raise_amount = 1.10

    def __init__(self, first, last, pay, prog_language):
        super().__init__(first, last, pay)
        self.prog_language = prog_language



class Manager(Employee):
    def __init__(self, first, last, pay, employees=None):
        super().__init__(first, last, pay)
        if employees is None:
            self.employees = []
        else:
            self.employees = employees


    def add_employee(self, emp):
        if emp not in self.employees:
            self.employees.append(emp)


    def remove_employee(self, emp):
        if emp in self.employees:
            self.employees.remove(emp)


    def print_employees(self):
        for emp in self.employees:
            print(f"---> {emp.full_name()}")


dev_1 = Developer('Andrew', 'Miotke', 50000, "python")
dev_2 = Developer('Gus', 'Gus', 70000, "swift")

mgr_1 = Manager("Sue", "Smith", 9000, [dev_1])


print(isinstance(mgr_1, Manager))
print(isinstance(mgr_1, Employee))

print(issubclass(Developer, Employee))