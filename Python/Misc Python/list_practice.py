LIST = ["hello", "another", "item", "."]
INT_LIST = [1, 2, 3, 4]
STRINGS_INT_LIST = ["Here\'s", "a list with", 1, 2, 3]
LIST_2 = [1, 2, 3, 4, ["STRINGS"], 5]
ANOTHER_LIST = ["New", "MacBook", "Pro", "!"]
LIST_THREE = ["Just another", "list" "but, this time", "using Ubuntu"]

""" splits by printing ["another", "item"] """
print(LIST[1:-1])

""" reverses the list """
print(INT_LIST[::-1])

""" loops over ANOTHER_LIST and splits at the first and second to last index of each item in i """
for i in ANOTHER_LIST:
    print(i[1:-1])

"""
 loops through ANOTHER_LIST and LIST_THREE and zips the two lists together
 by their index.
"""
for i in zip(ANOTHER_LIST, LIST_THREE):
    print(i)