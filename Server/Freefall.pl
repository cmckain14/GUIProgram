#...initialize looping variable, assume 'yes' as the first answer
$continueYN = "y";
 
while ($continueYN eq "y")
{
   #...get temperature input from the user
   print "Enter next temperature in degrees Farenheight (F):";
 
   $degreeF = <STDIN>;
   chomp($degreeF);
 
   #...convert temperature from F to Celsius
   $degreeC = ($degreeF - 32) * 5 / 9;
 
   print "Temperature in degrees C is: ".$degreeC."\n";
 
   #...check for temperature below freezing..
   if ($degreeC < 0)
   {
      print "Pack long underwear!\n";
   }
 
   #...check for it being a hot day...
   if ($degreeF > 100)
   {
      print "Remember to hydrate!\n";
   }
 
   print "Input another?";
 
   $continueYN = <STDIN>;
   chomp($continueYN);
}







#...initialize looping variable, assume 'yes' as the first answer
$continueYN = "y";
 
while ($continueYN eq "y")
{
   #...get temperature input from the user
   print "Enter next temperature in degrees Farenheight (F):";
 
   $degreeF = <STDIN>;
   chomp($degreeF);
 
   #...convert temperature from F to Celsius
   $degreeC = ($degreeF - 32) * 5 / 9;
 
   print "Temperature in degrees C is: ".$degreeC."\n";
 
   #...check for temperature below freezing..
   if ($degreeC < 0)
   {
      print "Pack long underwear!\n";
   }
 
   #...check for it being a hot day...
   if ($degreeF > 100)
   {
      print "Remember to hydrate!\n";
   }
 
   print "Input another?";
 
   $continueYN = <STDIN>;
   chomp($continueYN);
}
