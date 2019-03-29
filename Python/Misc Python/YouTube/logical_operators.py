has_high_income = False
has_good_credit = True

if has_high_income or  has_good_credit:
    print("eligible for loan")
else:
    print("No")

if has_high_income and has_good_credit:
    print("eligible for loan")
else:
    print("no")

if has_high_income and not has_good_credit:
    print("eligible for loan")
else: 
    print("no")

temperature = 20

if temperature > 30:
    print("it's a hot day")
elif temperature == 30:
    print("perfect")
elif temperature < 30:
    print("it's not too bad")
else:
    print("not a hot day")

name = input("Your name? ")

if len(name) < 3:
    print(f"{name} is too short")
elif len(name) > 50:
    print(f"{name} is too long")
else:
    print(f"{name} looks good")


