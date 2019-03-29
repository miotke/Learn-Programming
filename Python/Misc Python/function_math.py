def square(x): 
    return x * x

user_chosen_number = input("pick a number: ")

for i in range(int(user_chosen_number)):
    print(f"{i} is square to {square(i)}")

def add(u):
    return u + u

pick_number = input("Pick a number: ")

for y in range(int(pick_number)):
    print(f"{y} + {add(y)}")
