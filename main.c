#include <stdio.h>

void changeMe(int* x)
{
	*x=*x+2;
}

void fill(int* arr, int size){
	for(int i=0; i<size; i++){
		arr[i]=i;
		printf("%d\n",arr[i]);
	}
}



int main(int argc, char** argv) {

	int val=4;

	changeMe(&val);
	
	int arrval[10];
	
	fill(arrval,10);
	
	}
