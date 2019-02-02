# Obviously storing passwords in a text file is a bad idea. Don't do it!
# This was more so a proof of concept to generate a random string(or in this case a password)

import string
import random

# Function that will generate a random string with a charactor size minimum of 8
def pw_gen(size = 8, chars=string.ascii_letters + string.digits + string.punctuation):
 return ''.join(random.choice(chars) for _ in range(size))

# Creates a file named 'passwords.txt' and saves the generated string to that file
# Adds two new lines in between each entry
passwordFile = open('passwords.txt', 'a')
passwordFile.write('\n' + '\n' + pw_gen(int(input('How many charactors in your password?'))))
passwordFile.close()

