BEGIN {
	FS=","
	print "Getting Pokemon Statistics..."
	strongest=null
}

#Calculate Strongest Pokemon
{
	#sort -t "," Pokemon.csv -k5,5
	strongeset=head $5	
	echo "The strongest Pokemon is ..." strongest
}

END {
	print "Processing Complete."
}	
