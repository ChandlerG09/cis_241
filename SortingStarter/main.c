#include "file_lib.h"
#include <stdio.h>
#include "sorter.h"
/*
 * Read the file from the command-line.
 * Usage:
 * ./a.out FILE_TO_READ FILE_TO_WRITE
 *
 */

void filler(char** arr, int size){

	for(int i=0; i<size; ++i){
		*arr[i]=cont[i];
	}	
}


int main(int argc, char** argv){
	// Read the original file.
	
	char* content;
	size_t size=load_file(argv[1],&content);

	printf("\n%lu bytes read from the file\n",size);	
	
//	for( int i =0; i<100; ++i){
//		printf("%c",content[i]);
//	}
				
	load_file(argv[1], &content);	
	filler(&content,size);

	// Sort the file with the function you wrote.
	
	printf("%c\n",content[0]);	
	sort(&content , size);

	// Write out the new file.
	save_file(argv[2], content , size);	
	}


// You can see if your file worked correctly by using the
// command:
//
// diff ORIGINAL_FILE NEW_FILE
//
// If the command returns ANYTHING the files are different.
