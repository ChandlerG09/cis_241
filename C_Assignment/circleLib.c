#include "circleLib.h"
const double PI = 3.14159;
double calcPerim(double radius){
	double perim=radius*2;
	return perim;
}
double calcArea(double radius){
	double area=PI*(radius*radius);
	return area;
}
