# Creates a csv file named CreateCSV.csv
import csv

with open('CreateCSV.csv', 'wb') as csvfile:
	filewriter = csv.writer(csvfile, delimiter=',', quotechar='|', quoting=csv.QUOTE_MINIMAL)

	filewriter.writerow(['First Name', 'Last Name', 'Zip Code', 'Email', 'Password'])
