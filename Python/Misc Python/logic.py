age = int(input("What's yourage? "))

if age >= 10:
    print("Access allowed")

elif age < 18 and age > 0:
    print("Access not allowed")

else:
    print("Invalid age")
