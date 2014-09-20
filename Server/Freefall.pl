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


Sub math{
   $Time = sqrt(($Distance*2)/9.8);
   print "It took the object ".$Time." seconds to hit the ground\n";
}
( $Distance ) = @ARGV;

$continueYN = "y";
 
while ($continueYN eq "y")
{
   unless ($Distance) {
   print "Enter in the height of the building:";
   $Distance = <STDIN>; }
   chomp($Distance);
   Math();
   if ($Distance < 1)
   {
      print "Not quite long enough but it still works!\n";
   }
   if ($Distance > 100)
   {
      print "Are you throwing pennies out the World Trade Center?\n";
   }
   print "More physics homework?";
   $continueYN = <STDIN>;
   chomp($continueYN);
}
