BEGIN {
	FS=","
	print "\nGetting Pokemon Statistics...\n\n"
	strongest=null
	sumID=null
	sumTotal=null
	sumHP=null
	sumAtk=null
	sumDef=null
	sumSpAtk=null
	sumSpDef=null
	sumSpeed=null
}

#Calculate Strongest Pokemon
{
	sort -t "," "Pokemon.csv" -k5
	strongest=head $2	
}

#Calculate Average of each column
{
	#ID Column
	sumID=sumID+$1
	#Total Column
	sumTotal=sumTotal+$5
	#HP Column
	sumHP=sumHP+$6
	#Attack Column
	sumAtk=sumAtk+$7
	#Defense Column
	sumDef=sumDef+$8
	#Sp Atk Column
	sumSpAtk=sumSpAtk+$9
	#Sp Def Column
	sumSpDef=sumSpDef+$10
	#Speed Column
	sumSpeed=sumSpeed+$11
}

#Most Powerful Pokemon of Each type

/Grass/ {
sort -t "," "Pokemon.csv" -k5
grassb=  $2
avgGrassID=avgGrassID+$1/NR
avgGrassTotal=avgGrassTotal+$5/NR
avgGrassHP=avgGrassHP+$6/NR
avgGrassAttack=avgGrassAttack+$7/NR
avgGrassDefense=avgGrassDefense+$8/NR
avgGrassSpAttack=avgGrassSpAttack+$9/NR
avgGrassSpDef=avgGrassSpDef+$10/NR
avgGrassSpeed=avgGrassSpeed+$11/NR
}

/Bug/	{
	sort -t "," "Pokemon.csv" -k5
	bugb= $2
avgBugID=avgBugID+$1/NR
avgBugTotal=avgBugTotal+$5/NR
avgBugHP=avgBugHP+$6/NR
avgBugAttack=avgBugAttack+$7/NR
avgBugDefense=avgBugDefense+$8/NR
avgBugSpAttack=avgBugSpAttack+$9/NR
avgBugSpDef=avgBugSpDef+$10/NR
avgBugSpeed=avgBugSpeed+$11/NR
}

/Poison/	{
	sort -t "," "Pokemon.csv" -k5
	poisonb= $2
avgPoisonID=avgPoisonID+$1/NR
avgPoisonTotal=avgPoisonTotal+$5/NR
avgPoisonHP=avgPoisonHP+$6/NR
avgPoisonAttack=avgPoisonAttack+$7/NR
avgPoisonDefense=avgPoisonDefense+$8/NR
avgPoisonSpAttack=avgPoisonSpAttack+$9/NR
avgPoisonSpDef=avgPoisonSpDef+$10/NR
avgPoisonSpeed=avgPoisonSpeed+$11/NR
}

/Fire/ 	{
	sort -t "," "Pokemon.csv" -k5
	fireb= $2
avgFireID=avgFireID+$1/NR
avgFireTotal=avgFireTotal+$5/NR
avgFireHP=avgFireHP+$6/NR
avgFireAttack=avgFireAttack+$7/NR
avgFireDefense=avgFireDefense+$8/NR
avgFireSpAttack=avgFireSpAttack+$9/NR
avgFireSpDef=avgFireSpDef+$10/NR
avgFireSpeed=avgFireSpeed+$11/NR
}

/Flying/	{
	sort -t "," "Pokemon.csv" -k5
	flyingb= $2
avgFlyingID=avgFlyingID+$1/NR
avgFlyingTotal=avgFlyingTotal+$5/NR
avgFlyingHP=avgFlyingHP+$6/NR
avgFlyingAttack=avgFlyingAttack+$7/NR
avgFlyingDefense=avgFlyingDefense+$8/NR
avgFlyingSpAttack=avgFlyingSpAttack+$9/NR
avgFlyingSpDef=avgFlyingSpDef+$10/NR
avgFlyingSpeed=avgFlyingSpeed+$11/NR
}

/Electric/	{
	electricb= $2
avgElectricID=avgElectricID+$1/NR
avgElectricTotal=avgElectricTotal+$5/NR
avgElectricHP=avgElectricHP+$6/NR
avgElectricAttack=avgElectricAttack+$7/NR
avgElectricDefense=avgElectricDefense+$8/NR
avgElectricSpAttack=avgElectricSpAttack+$9/NR
avgElectricSpDef=avgElectricSpDef+$10/NR
avgElectricSpeed=avgElectricSpeed+$11/NR
}

/Ground/	{
	sort -t "," "Pokemon.csv" -k5
	groundb= $2
avgGroundID=avgGroundID+$1/NR
avgGroundTotal=avgGroundTotal+$5/NR
avgGroundHP=avgGroundHP+$6/NR
avgGroundAttack=avgGroundAttack+$7/NR
avgGroundDefense=avgGroundDefense+$8/NR
avgGroundSpAttack=avgGroundSpAttack+$9/NR
avgGroundSpDef=avgGroundSpDef+$10/NR
avgGroundSpeed=avgGroundSpeed+$11/NR
}

/Onix/ 	{
	sort -t "," "Pokemon.csv" -k5
	onixb= $2
avgBug1ID=avgBug1ID+$1/NR
avgBug1Total=avgBug1Total+$5/NR
avgBug1HP=avgBug1HP+$6/NR
avgBug1Attack=avgBug1Attack+$7/NR
avgBug1Defense=avgBug1Defense+$8/NR
avgBug1SpAttack=avgBug1SpAttack+$9/NR
avgBug1SpDef=avgBug1SpDef+$10/NR
avgBug1Speed=avgBug1Speed+$11/NR
}

/Psychic/	{
	sort -t "," "Pokemon.csv" -k5
	psychicb=  $2
avgBug2ID=avgBug2ID+$1/NR
avgBug2Total=avgBug2Total+$5/NR
avgBug2HP=avgBug2HP+$6/NR
avgBug2Attack=avgBug2Attack+$7/NR
avgBug2Defense=avgBug2Defense+$8/NR
avgBug2SpAttack=avgBug2SpAttack+$9/NR
avgBug2SpDef=avgBug2SpDef+$10/NR
avgBug2Speed=avgBug2Speed+$11/NR
}
/Dark/	{
	sort -t "," "Pokemon.csv" -k5
	darkb= $2
avgBug3ID=avgBug3ID+$1/NR
avgBug3Total=avgBug3Total+$5/NR
avgBug3HP=avgBug3HP+$6/NR
avgBug3Attack=avgBug3Attack+$7/NR
avgBug3Defense=avgBug3Defense+$8/NR
avgBug3SpAttack=avgBug3SpAttack+$9/NR
avgBug3SpDef=avgBug3SpDef+$10/NR
avgBug3Speed=avgBug3Speed+$11/NR
}

/Ice/	{
	sort -t "," "Pokemon.csv" -k5
	iceb= $2
avgBug4ID=avgBug4ID+$1/NR
avgBug4Total=avgBug4Total+$5/NR
avgBug4HP=avgBug4HP+$6/NR
avgBug4Attack=avgBug4Attack+$7/NR
avgBug4Defense=avgBug4Defense+$8/NR
avgBug4SpAttack=avgBug4SpAttack+$9/NR
avgBug4SpDef=avgBug4SpDef+$10/NR
avgBug4Speed=avgBug4Speed+$11/NR
}


/Fighting/	{
	sort -t "," "Pokemon.csv" -k5
	fightingb= $2
avgBug5ID=avgBug5ID+$1/NR
avgBug5Total=avgBug5Total+$5/NR
avgBug5HP=avgBug5HP+$6/NR
avgBug5Attack=avgBug5Attack+$7/NR
avgBug5Defense=avgBug5Defense+$8/NR
avgBug5SpAttack=avgBug5SpAttack+$9/NR
avgBug5SpDef=avgBug5SpDef+$10/NR
avgBug5Speed=avgBug5Speed+$11/NR
}

/Steel/		{
	sort -t "," "Pokemon.csv" -k5
	steelb= $2
avgBug6ID=avgBug6ID+$1/NR
avgBug6Total=avgBug6Total+$5/NR
avgBug6HP=avgBug6HP+$6/NR
avgBug6Attack=avgBug6Attack+$7/NR
avgBug6Defense=avgBug6Defense+$8/NR
avgBug6SpAttack=avgBug6SpAttack+$9/NR
avgBug6SpDef=avgBug6SpDef+$10/NR
avgBug6Speed=avgBug6Speed+$11/NR
}

/Fairy/		{
	sort -t "," "Pokemon.csv" -k5
	fairyb= $2
avgBug7ID=avgBug7ID+$1/NR
avgBug7Total=avgBug7Total+$5/NR
avgBug7HP=avgBug7HP+$6/NR
avgBug7Attack=avgBug7Attack+$7/NR
avgBug7Defense=avgBug7Defense+$8/NR
avgBug7SpAttack=avgBug7SpAttack+$9/NR
avgBug7SpDef=avgBug7SpDef+$10/NR
avgBug7Speed=avgBug7Speed+$11/NR
}

/Water/		{
	sort -t "," "Pokemon.csv" -k5
	waterb= $2
avgBug8ID=avgBug8ID+$1/NR
avgBug8Total=avgBug8Total+$5/NR
avgBug8HP=avgBug8HP+$6/NR
avgBug8Attack=avgBug8Attack+$7/NR
avgBug8Defense=avgBug8Defense+$8/NR
avgBug8SpAttack=avgBug8SpAttack+$9/NR
avgBug8SpDef=avgBug8SpDef+$10/NR
avgBug8Speed=avgBug8Speed+$11/NR
}

/Ghost/ 	{
	sort -t "," "Pokemon.csv" -k5
	ghostb= $2
avgBug9ID=avgBug9ID+$1/NR
avgBug9Total=avgBug9Total+$5/NR
avgBug9HP=avgBug9HP+$6/NR
avgBug9Attack=avgBug9Attack+$7/NR
avgBug9Defense=avgBug9Defense+$8/NR
avgBug9SpAttack=avgBug9SpAttack+$9/NR
avgBug9SpDef=avgBug9SpDef+$10/NR
avgBug9Speed=avgBug9Speed+$11/NR
}







END {
	print "The strongest Pokemon is ..." strongest
	print "\n=========="
	print "\nAverages:\n"
	print "ID: " sumID/NR 
	print "\nTotal: " sumTotal/NR 
	print "\nHP: " sumHP/NR 
	print "\nAttack: " sumAtk/NR 
	print "\nDefense: " sumDef/NR 
	print "\nSpecial Attack: " sumSpAtk/NR 
	print "\nSpecial Defense " sumSpDef/NR 
	print "\nSpeed " sumSpeed/NR
	print "\n==========="
	
	print "\nBest of Each Type\n"
	print "Onix: " onixb
	print "\nPsychic: " psychicb
	print "\nDark: " darkb
	print "\nFire: " fireb
	print "\nIce: " iceb
	print "\nFighting: " fightingb
	print "\nSteel: " steelb
	print "\nGround: " groundb
	print "\nFlying: " flyingb
	print "\nPoison: " poisonb
	print "\nElectric: " electricb
	print "\nFairy: " fairyb
	print "\nWater: " waterb
	print "\nBug: " bugb
	print "\nGrass: " grassb
	print "\nGhost: " ghostb
	print "\n\n==========="
	
	print "\nGrass Average Stats:"
	print "\nID: " avgGrassID
	print "\nTotal: " avgGrassTotal
	print "\nHP: " avgGrassHP
	print "\nAttack: " avgGrassAttack
	print "\nDefense: " avgGrassDefense
	print "\nSpecial Attack: " avgGrassSpAttack
	print "\nSpecial Defense: " avgGrassSpDef
	print "\nSpeed: " avgGrassSpeed
	
	print "\nBug Average Stats:"
	print "\nID: " avgBugID
        print "\nTotal: " avgBugTotal
        print "\nHP: " avgBugHP
        print "\nAttack: " avgBugAttack
        print "\nDefense: " avgBugDefense
        print "\nSpecial Attack: " avgBugSpAttack
        print "\nSpecial Defense: " avgBugSpDef
        print "\nSpeed: " avgBugSpeed

	print "\nPoison Average Stats:"
 print "\nID: " avgPoisonID
        print "\nTotal: " avgPoisonTotal
        print "\nHP: " avgPoisonHP
        print "\nAttack: " avgPoisonAttack
        print "\nDefense: " avgPoisonDefense
        print "\nSpecial Attack: " avgPoisonSpAttack
        print "\nSpecial Defense: " avgPoisonSpDef
        print "\nSpeed: " avgPoisonSpeed

	print "\nFlying Average Stats:"
	print "\nID: " avgFlyingID
        print "\nTotal: " avgFlyingTotal
        print "\nHP: " avgFlyingHP
        print "\nAttack: " avgFlyingAttack
        print "\nDefense: " avgFlyingDefense
        print "\nSpecial Attack: " avgFlyingSpAttack
        print "\nSpecial Defense: " avgFlyingSpDef
        print "\nSpeed: " avgFlyingSpeed
	
	print "\nElectric Average Stats:"
	print "\nID: " avgElectricID
        print "\nTotal: " avgElectricTotal
        print "\nHP: " avgElectricHP
        print "\nAttack: " avgElectricAttack
        print "\nDefense: " avgElectricDefense
        print "\nSpecial Attack: " avgElectricSpAttack
        print "\nSpecial Defense: " avgElectricSpDef
        print "\nSpeed: " avgElectricSpeed

	print "\nFlying Average Stats:"
	print "\nID: " avgFlyingID
        print "\nTotal: " avgFlyingTotal
        print "\nHP: " avgFlyingHP
        print "\nAttack: " avgFlyingAttack
        print "\nDefense: " avgFlyingDefense
        print "\nSpecial Attack: " avgFlyingSpAttack
        print "\nSpecial Defense: " avgFlyingSpDef
        print "\nSpeed: " avgFlyingSpeed
	
	print "\nGround Average Stats:"
	 print "\nID: " avgGroundID
        print "\nTotal: " avgGroundTotal
        print "\nHP: " avgGroundHP
        print "\nAttack: " avgGroundAttack
        print "\nDefense: " avgGroundDefense
        print "\nSpecial Attack: " avgGroundSpAttack
        print "\nSpecial Defense: " avgGroundSpDef
        print "\nSpeed: " avgGroundSpeed

	print "\nOnix Average Stats:"
	 print "\nID: " avgBug1ID
        print "\nTotal: " avgBug1Total
        print "\nHP: " avgBug1HP
        print "\nAttack: " avgBug1Attack
        print "\nDefense: " avgBug1Defense
        print "\nSpecial Attack: " avgBug1SpAttack
        print "\nSpecial Defense: " avgBug1SpDef
        print "\nSpeed: " avgBug1Speed
	
	print "\nPsychic Average Stats:"
	 print "\nID: " avgBug2ID
        print "\nTotal: " avgBug2Total
        print "\nHP: " avgBug2HP
        print "\nAttack: " avgBug2Attack
        print "\nDefense: " avgBug2Defense
        print "\nSpecial Attack: " avgBug2SpAttack
        print "\nSpecial Defense: " avgBug2SpDef
        print "\nSpeed: " avgBug2Speed

	print "\nDark Average Stats:"
	 print "\nID: " avgBug3ID
        print "\nTotal: " avgBug3Total
        print "\nHP: " avgBug3HP
        print "\nAttack: " avgBug3Attack
        print "\nDefense: " avgBug3Defense
        print "\nSpecial Attack: " avgBug3SpAttack
        print "\nSpecial Defense: " avgBug3SpDef
        print "\nSpeed: " avgBug3Speed

	print "\nIce Average Stats:"
 	print "\nID: " avgBug4ID
        print "\nTotal: " avgBug4Total
        print "\nHP: " avgBug4HP
        print "\nAttack: " avgBug4Attack
        print "\nDefense: " avgBug4Defense
        print "\nSpecial Attack: " avgBug4SpAttack
        print "\nSpecial Defense: " avgBug4SpDef
        print "\nSpeed: " avgBug4Speed

	print "\nFighting Average Stats:"
	 print "\nID: " avgBug5ID
        print "\nTotal: " avgBug5Total
        print "\nHP: " avgBug5HP
        print "\nAttack: " avgBug5Attack
        print "\nDefense: " avgBug5Defense
        print "\nSpecial Attack: " avgBug5SpAttack
        print "\nSpecial Defense: " avgBug5SpDef
        print "\nSpeed: " avgBug5Speed

	print "\nSteel Average Stats:"
	 print "\nID: " avgBug6ID
        print "\nTotal: " avgBug6Total
        print "\nHP: " avgBug6HP
        print "\nAttack: " avgBug6Attack
        print "\nDefense: " avgBug6Defense
        print "\nSpecial Attack: " avgBug6SpAttack
        print "\nSpecial Defense: " avgBug6SpDef
        print "\nSpeed: " avgBug6Speed

	print "\nFairy Average Stats:"
	 print "\nID: " avgBug7ID
        print "\nTotal: " avgBug7Total
        print "\nHP: " avgBug7HP
        print "\nAttack: " avgBug7Attack
        print "\nDefense: " avgBug7Defense
        print "\nSpecial Attack: " avgBug7SpAttack
        print "\nSpecial Defense: " avgBug7SpDef
        print "\nSpeed: " avgBug7Speed

	print "\nWater Average Stats:"
	 print "\nID: " avgBug8ID
        print "\nTotal: " avgBug8Total
        print "\nHP: " avgBug8HP
        print "\nAttack: " avgBug8Attack
        print "\nDefense: " avgBug8Defense
        print "\nSpecial Attack: " avgBug8SpAttack
        print "\nSpecial Defense: " avgBug8SpDef
        print "\nSpeed: " avgBug8Speed

	print "\nGhost Average Stats:"
	 print "\nID: " avgBug9ID
        print "\nTotal: " avgBug9Total
        print "\nHP: " avgBug9HP
        print "\nAttack: " avgBug9Attack
        print "\nDefense: " avgBug9Defense
        print "\nSpecial Attack: " avgBug9SpAttack
        print "\nSpecial Defense: " avgBug9SpDef
        print "\nSpeed: " avgBug9Speed
	
	print "\n========="
	print "\nThe Sum of the HP of every Pokemon is: " sumHP
	print "\n========="

	print "\nProcessing Complete."
}	

