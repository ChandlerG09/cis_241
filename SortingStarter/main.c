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

	char* content;
	size_t size=load_file(argv[1],&content);
	
	// Display the size of the file
	printf("\n%lu bytes read from the file \"%s\"\n\nSorting....\n",size,argv[1]);	
	
	// Load the file	
	load_file(argv[1], &content);	
	
	// Sort the file
	sort(&content , size);

	// Write out the new file.
	save_file(argv[2], content , size);
	
	// Free memory	
	free(content);	
}
