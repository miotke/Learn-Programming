#!/usr/bin/python3
import sys

def cat(file_name): 
    unique_word = []

    f = open(file_name, 'r')
    text = f.read()
    unique_word.append(text)
    print(unique_word)
    f.close()

def main():
    cat(sys.argv[1])




if __name__ == '__main__': 
    main()
