#!/usr/bin/env python3
import sys
try:
    sDollars = sys.argv[1]
except IndexError:
	sDollars = 0 
continueYN = "y"
while continueYN == "y":
   if sDollars is 0:
    sDollars = input("Enter the amount of dollars you would like to convert to pounds and/or euros:") 
   try:
       nDollars = int(sDollars)
   except ValueError:
       nDollars = float(sDollars)
   nPounds = nDollars * .63
   fPounds = round(nPounds,2)
   nEuros = nDollars * .78
   fEuros = round(nEuros,2)
   print ("You have", fPounds, "pounds and", fEuros,"euros.")
   if fPounds > 9999 or fEuros > 9999:
    print ("You must declare this beforing entering the UK or the rest of the EU.")
   continueYN = print("Thanks for playing.")
