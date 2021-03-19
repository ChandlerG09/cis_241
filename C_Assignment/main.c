#include "stdio.h"
#include "circleLib.h"
#include "newLib.h"
int main(int argc, char** argv){

	double radius=5;
	double perim;
	double area;
	double rPerim;
	double rArea;
	perim=calcPerim(radius);
	area=calcArea(radius);
	rArea=rectArea(5,4);
	rPerim=rectPerim(5,4);
	printf("Radius = %f Perimeter = %f  Area = %f Rectangle Perimeter: %f Rectangle Area %f",radius,perim,area,rPerim,rArea);
}
