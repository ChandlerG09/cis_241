#include <stdlib.h>
#include "sorter.h"
#include "file_lib.h"
#include <stdio.h>
#include <string.h>


void sort(char** contents, int size){
	
	// Designate memory for the array
	char** arr = malloc(sizeof(char*)*size);
	int j;	
	int i=0;
	int numlines=0;
	char* key;	
	char* tok = strtok(*contents, "\n:");
	char* sorted = malloc(sizeof(char*)*size);	

	// Putting the file into an array
	while( tok != NULL ){
		
		arr[numlines]=tok;
		tok = strtok(NULL, "\n:");
		++numlines;
	}
	
	// Sort using insertion sort
	for (i=1; i<numlines; ++i) {
		key = arr[i];
		j = i-1;

		while (j >= 0 && strcasecmp(arr[j] , key) > 0) {
			arr[j+1] = arr[j];
			--j;
		}
		arr[j+1] = key;
	}
	
	// Put sorted strings into one large string
	for (int i =0; i<numlines; ++i) {
		strcat(sorted,arr[i]);
		strcat(sorted, "\n");
	}
	
	//Confirmation Message
	printf("\nSorting Complete!\n\n%d lines read from the file\n\n",numlines);
		
	//set the sorted array to the contents found in main.
	*contents = sorted;

	//free memory
	free(arr);
}
		
