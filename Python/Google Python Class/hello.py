
import sys

def hello(name):
    if name == "Maggie" or "Andrew":
        name = name + "???"
    else: 
        print "Else"

    name = name + "!!!!!!"
    print 'Hello', name

def main(): 
    hello(sys.argv[1])

if __name__ == '__main__':
    main()
