#include <stdlib.h>
#include "sorter.h"
#include "file_lib.h"
#include <stdio.h>
#include <string.h>


void sort(char** contents, int size){
	
	//Designate memory for the array
	char** arr = malloc(sizeof(char*)*size);
	
	int i=0;
	int numlines=0;

	//Putting the file into an array
	char* tok = strtok(*contents, "\n:");
	while( tok != NULL ){
		arr[numlines]=tok;
		
		//Testing to make sure the array is created correctly
		//	printf("%s\n", arr[numlines]);
		
		tok = strtok(NULL, "\n:");
		++numlines;
	}

	printf("\n%d lines read from the file",numlines);

/**	for( int i=numlines; i>0; --i){
		int tempi=i;	
		while (i > 0) {
			while (arr[i]  < arr[tempi-1]) {
				if(tempi>0){
					char* temp = arr[tempi-1];
					arr[tempi-1] = arr[tempi];
					arr[tempi] = temp;
					--tempi;
				}
			}	
			--i;
			}
		}
*/	contents = malloc(sizeof(char*)*size);
	for(int i=0; i<numlines; ++i) {
		contents = arr;
	}
}
		
