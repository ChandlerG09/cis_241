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
{

	#Grass
	grassb= /Grass/

	#Posion
	poisonb= /Poison/ "Pokemon.csv" $2

	#Fire
	fireb= /Fire/ "Pokemon.csv" $2

	#Flying
	flyingb=/Flying/ "Pokemon.csv" $2

	#Electric
	electricb=/Electric/ "Pokemon.csv" $2

	#Ground
	groundb= /Ground/ "Pokemon.csv" $2

	#Onix
	onixb= /Onix/ "Pokemon.csv" $2

	#Psychic
	psychicb= /Psychic/ "Pokemon.csv" $2

	#Dark
	darkb= /Dark/ "Pokemon.csv" $2

	#Ice
	iceb= /Ice/ "Pokemon.csv" $2

	#Fighting
	fightingb= /Fighting/ "Pokemon.csv" $2

	#Steel
	steelb= /Steel/ "Pokemon.csv" $2

	#Fairy
	fairyb=/Fairy/ "Pokemon.csv" $2

	#Water
	waterb= /Water/ "Pokemon.csv" $2

	#Ghost
	ghostb= /Ghost/ "Pokemon.csv" $2





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
	print "\nProcessing Complete."
}	
