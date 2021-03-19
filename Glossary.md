Command Glossary

**clear** - Clears the terminal
```
clear
```

**ls -l** - Lists the files found in the current working directory in long format
```
ls -l
```

**whoami** - Displays the username of the user
```
whoami
```

**date** - displays the date (based on the system)
```
date
```

**vim [fileName]** - Creates a file using vim with [fileName] as a name
```
vim myFile
```

**git add** - adds a file to a git repository
```
git add TestFile.txt
```

**git commit** - Commits the file to the git directory
```
git comitt TestFile.txt
```

**git push** - pushes the file to the cloud
```
git push 
```

**history** - displays the history
```
history
```

**history -c** - clears the history
```
history -c
```

**echo** - displays the message in the terminal
```
echo "Hello World"
```

**chmod** - used to change permissions for files of either "u"-user "g"-group or "o"-other users
```
chmod u=rwx,g=rw,o=r
```

**chown** - Used to change the owner of a file
```
chown glowickc
```

**pwd** - Displays the present working directory
```
pwd
```

**mkdir [Directory name]** - creates a directory
```
mkdir Passports
```

**mv** -Moves a file and or copies a file to a new file to change the name of the file
```
mv file1 NewName
mv NamedFile/ HOME/
```

**cp** - Copy the file to a new location
```
cp fileOne/ glowickc/CIS241
```

**file** - Displays the type of file
```
file TestFile.txt
```

**mount** - used to retrieve files from a USB

**unmount** - unmounts a mount already made

**tr** - allows us to translate or delete a character
```
#Deletes all periods and commas from the specified file name
cat fileName | tr -d '.,'

#Replaces spaces with new Lines
cat fileName | tr ' ' '\n'
```

**cat -A** - Attempts to give a character representation of every byte
```
cat -A fileName
```

**sort** - used to sort words in a file
```
#Default Sort
sort fileName

#Sort by ascii value
cat fileName | sort

#Sort by numeric value
cat fileName | sort -n

#Sort from a specific location seperated by commas
cat fileName | sort -t','
```

**uniq -c** - Used to count the number of times a word or value is used duplicated lines only
```
cat fileName | sort | uniq -c
```

**wc** - displays number of lines words and characters in a file
```
wc fileName

#Display only the number of lines
wc -l fileName
```

**Globbing** - used to expand multiple things at once
```
#Opens all files that have any string
ls *

#Opens all files that start with 'b'
ls b*

#Opens all files that end with 'b'
ls *b

#Opens everything that has an 'a' in it
ls *a*

#Opens everything that starts with a s only one character in the middle and a t at the end
ls s?t

#Opens all 3 letter words
ls ???

#Opens all things that end with a t or an n
ls ??[t,n]
```

**Regular Expressions** Used to search documents similar to globbinh
```
#Search for any 3 letter word that has an 'a' in the middle
.a.

#Search for 'l' or 'an'
l|n

#Search for 'in' or 'en'
[i|e]n

#Search for a meta character (use a backslash)
\.
\[]
\()

#Search for anything that starts with 'the' including all the 'the's
the.?

#Search for digits
[\d]

#Search for 2 or more digits
[\d]+

#Search for anything 0-9 or a-z
[0-9]+|[a-z]

#Search for whitespace
[\s]

#Search for anything that starts with 'the' but ends with anything
[\s][t|T]he[a-z]*[\s]

#Search for a word that has 2 'n' in the word (next to eachother)_
n{2}

#Capture only the word 'the' with word boundaries
\bthe\b

```

**Grep** - Used for sorting and finding within documents
```
#Search for "Hell There in filename.txt
Grep "Hello There" filename.txt

#Search for a regular expression
Grep -E \([0-9]{3}\)

#Return the line number that "hello is found on
Grep -n "hello"

#Return matches only of the regular expression
Grep -E -o \(\d{3}\)

#Return with word boundaries
grep -E "\bHello\b"

#Return only the line that has only the word Alice in it
grep -E "^Alice$"
```

**sed** - (Stream Editor) Used for manipulating and changing strings (Change "e"s to "u"s, get rid of new lines etc)
```
#Replace Alice with Herbert
sed 's/Alice/Herbert/g' fileName

#Sed Syntax
sed -E '[ADDRESS]COMMAND[OPTIONS]

#Copy to pattern from hold space
sed 'g' (overwrite)
sed 'G' (append)_

#Copy from pattern to hold
sed 'h' (overwrite)
sed 'H' (append)

#Supress output
sed -n '[command]'

#Print lines 1-4
sed -n '1,4 p' fileName

#Print every other line
sed -n '1~2 p' fileName

#Double space the document
sed ''G fileName


```

**awk** - Used for strucutred documents
```
#Print the first field
awk '{ print $1}' fileName

#Print all fields
awk ' {print $0} fileName

#Print the last field
awk ' {print $NF }' fileName
```

**C Programming**\n

**Processors** can only read instruction sets\n
**Assembly language** was used to access the instruction set\n
**Abstraction** used to give a name to a process (for loops ++, while loops)\n
**Bell Labs**- Creator of Unix\n
**C Language** Created for the sole purpose of running Unix\n
**Dennis Ritchie** created C based on BCPL and B\n
**Imperative procedural** = C language\n
**Procedural**- can make functions/methods\n
**Precompiled code** is stored in libraries with .dll .o .so .a or .dylib\n
	This saves memory and makes compiling quicker\n




