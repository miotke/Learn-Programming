import csv

# Reads a CSV file and prints each row in the console

# open file
with open('CreateCSV.csv', 'rb') as f:
    reader = csv.reader(f)

    # read file row by row
    for row in reader:
        print row
