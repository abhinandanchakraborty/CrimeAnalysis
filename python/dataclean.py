# - *- coding: utf- 8 - *-
__author__ = 'abhinandan'

import csv

with open('/home/cloudera/Downloads/crime.csv') as csvfile:
    readCSV = csv.reader(csvfile, delimiter=',')
    c = csv.writer(open("/home/cloudera/Desktop/cleansfo.csv", "w"))
    next(readCSV)
    for row in readCSV:
        field1=row[0].replace(",", " ")
        field2=row[1].replace(",", " ")
        field3=row[2].replace(",", " ")
        field4=row[3].replace(",", " ")
        field5=row[4].replace(",", " ")
        field6=row[5].replace(",", " ")
        field7=row[6].replace(",", " ")
        field8=row[7].replace(",", " ")
        field9=row[8].replace(",", " ")
        field10=row[9].replace(",", " ")
        field11=row[10].replace(",", " ")
        field12=row[11].replace(",", " ")
        field13=row[12].replace(",", " ")
        c.writerow([field1,field2,field3,field4,field5,field6,field7,field8,field9,field10,field11,field12,field13])

