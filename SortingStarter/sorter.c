#include <stdlib.h>
#include "sorter.h"
#include "file_lib.h"
#include <stdio.h>
#include <string.h>


void sort(char** contents, int size){
	
	//Designate memory for the array
	char** arr = malloc(sizeof(char*)*size);
	int j;	
	int i=0;
	int numlines=0;
	char* key;	
	char* tok = strtok(*contents, "\n:");
	
	//Putting the file into an array
	while( tok != NULL ){
		
		arr[numlines]=tok;
		tok = strtok(NULL, "\n:");
		++numlines;
	}
	
	//Making a char array that can hold the contents of the read file
	char array[20*numlines];

	//Sort using insertion sort
	for (i=1; i<numlines; ++i) {
		key = arr[i];
		j = i-1;

		while (j >= 0 && arr[j] > key) {
			arr[j+1] = arr[j];
			--j;
		}
		arr[j+1] = key;
	}
		
	//Add sorted array to a new array
	for (int i=0; i<numlines; ++i) {
		strcat(array, arr[i]);
		strcat(array, "\n");
	}
	
/* 	TEST CODE
 	//are the words moving (No)
	for(int i=0; i<numlines; ++i) {
		printf("%s",arr[i]);
		printf("\n");
	}
	
	//make sure words are being put in new array (Yes)
	printf("%s",array);
*/

	printf("%d lines read from the file\n",numlines);
		
	//set the sorted array to the contents found in main.
	*contents = array;

	//free memory
	free(arr);
}
		
