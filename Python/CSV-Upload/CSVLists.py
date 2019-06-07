import csv

# create list holders for our data
names = []
profession = []

# open file
with open('CreateCSV.csv', 'rb') as f:
    reader = csv.reader(f)

    # read file row by row
    rowNr = 0
    for row in reader:
        # skip the header row
        if rowNr >= 1:
            names.append(row[0])
            jobs.append(row[1])

            # increase the row number
            rowNr = rowNr + 1

# print data
print names
print profession
