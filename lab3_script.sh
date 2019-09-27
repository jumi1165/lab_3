#!/bin/bash
# Authors : Justin Miller
# Date: 9/20/2019 

#Problem 1 Code:
#Make sure to document how you are solving each problem!

#prompt the user to input a file name
echo "Enter a file name: "
read fileName #recieves user input and saves it as fileName

#prompt the user to input a regular expression
echo "Enter a regular expression: "
read regExp #receives user input and saves it as regExp
##########################################################
#Problem 2 Code:

#search the file with the given regular expression
grep $regExp $fileName
##########################################################
#Problem 3 Code:

#Output the number of phone numbers in "regex_practice.txt"
echo "Number of phone numbers in regex_practice.txt: "
#The phone number is patterned such that ###-###-####
egrep -c [0-9]{3}-[0-9]{3}-[0-9]{4} regex_practice.txt
##########################################################
#Problem 4 Code:

#Output the number of emails in "regex_practice.txt"
echo "Number of emails in regex_practice.txt: "
#Emails are tailored such that there is an "@", signifying an address
egrep -c  @ regex_practice.txt

#List all of the phone numbers in the 303 area code
echo "List of all the numbers with a 303 area code: "
#Subtle reminder that a phone number is paterned such that ###-###-####
egrep 303-[0-9]{3}-[0-9]{4} regex_practice.txt

#Store a list of all the emails from geocities.com in a new file
egrep @geocities.com regex_practice.txt >> email_results.txt
