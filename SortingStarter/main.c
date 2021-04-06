#include "file_lib.h"
#include <stdio.h>
#include "sorter.h"
#include "stdio.h"
/*
 * Read the file from the command-line.
 * Usage:
 * ./a.out FILE_TO_READ FILE_TO_WRITE
 *
 */

int main(int argc, char** argv){
	// Read the original file.
	
	char* fileName=argv[1];
	char** text=&fileName;
	load_file(fileName, text);	

	// Sort the file with the function you wrote.
	
	sort(argv[1], sizeof(*argv[1]));

	// Write out the new file.
	

}

// You can see if your file worked correctly by using the
// command:
//
// diff ORIGINAL_FILE NEW_FILE
//
// If the command returns ANYTHING the files are different.
