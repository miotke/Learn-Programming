class A:
    def __init__(self):
        print("In class A")


class B(A):
    def __init__(self):
        print("In class B")


class C(A):
    def __init__(self):
        print("In class C")


class D(B, C):
    def __init__(self):
        print("In class D")


d = D()