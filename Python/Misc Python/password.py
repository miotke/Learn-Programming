"""
Obviously storing passwords in a text file is a bad idea. Don't do it!
This was more so a proof of concept to generate a random string(or in this case a password)
"""

import string
import random


def pw_gen(size = 8, chars=string.ascii_letters + string.digits + string.punctuation):
    """ Function that will generate a random string with a charactor size minimum of 8 """
    return ''.join(random.choice(chars) for _ in range(size))


def write_password():
    """
    Creates a file named 'passwords.txt' and saves the generated string to that file
    Adds two new lines in between each entry
    """
    with open('passwords.txt', 'a') as password_file:
        password_file.write('\n' + '\n' + pw_gen(int(input('How many characters in your password? '))))
        password_file.close()


if __name__ == '__main__':
    write_password()