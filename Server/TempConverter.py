#!/usr/bin/env python3
continueYN = "y"
while continueYN == "y":
   sDegreeF = input("Enter next temperature in degrees Farenheight (F):")
   nDegreeF = int(sDegreeF)
   nDegreeC = (nDegreeF - 32) * 5 / 9
   print ("Temperature in degrees C is:", nDegreeC)
   if nDegreeC < 0:
      print ("Pack long underwear!")
   if nDegreeF > 100:
      print ("Remember to hydrate!")
   continueYN = input("Input another?")
