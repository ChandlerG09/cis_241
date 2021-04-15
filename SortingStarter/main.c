#include "file_lib.h"
#include <stdio.h>
#include "sorter.h"
#include <string.h>

/*
 * Read the file from the command-line.
 * Usage:
 * ./a.out FILE_TO_READ FILE_TO_WRITE
 *
 */


int main(int argc, char** argv){
	// Read the original file.
	
	char* content;
	size_t size=load_file(argv[1],&content);
	
	

	printf("\n%lu bytes read from the file\n",size);	
		
	load_file(argv[1], &content);	
	

	// Sort the file with the function you wrote.
	sort(&content , size);
	
	//print the 5th word??
	//printf("\n%s", content);

	// Write out the new file.
	save_file(argv[2], content , size);	

}


// You can see if your file worked correctly by using the
// command:
//
// diff ORIGINAL_FILE NEW_FILE
//
// If the command returns ANYTHING the files are different.
