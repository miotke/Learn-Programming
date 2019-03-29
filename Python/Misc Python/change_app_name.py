# Searches the whole directory for a string and changes it with a different string
import os, fnmatch

def findReplace(directory, find, replace, filePattern):
    for path, dirs, files in os.walk(os.path.abspath(directory)):
        for filename in fnmatch.filter(files, filePattern):
            filepath = os.path.join(path, filename)
            with open(filepath) as f:
                s = f.read()
            s = s.replace(find, replace)
            with open(filepath, "w") as f:
                f.write(s)

findReplace('/Users/[usern name]/Desktop/[directory to search]', "I did it guys!", "Hooray, this works!", '*.txt')
# Iterate on this further: Print the file name and path that was changed