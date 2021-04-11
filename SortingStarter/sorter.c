#include <stdlib.h>
#include "sorter.h"
#include "file_lib.h"
#include <stdio.h>

void sort(char* contents, int size){
	for(int i=0; i<size; ++i){
		if(contents[0]<contents[1]){
			char* temp=&contents[i];
			contents[i]=contents[i+1];
			contents[i+1]=contents[i];
			}
		}
	printf("The first word is %c",contents[0]);
	}
