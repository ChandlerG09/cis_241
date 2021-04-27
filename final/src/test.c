#include "test.h"
#include "math.h"
#include "student.h"
#include <stdlib.h>

/**
 * Example for demonstration at start of test.
 */

int example(){
	return 42;
}

/**
 * Warmup (but counts for credit!)
 * Square the value x points to.
 */
void easyPeasy(int* x){
	*x = *x * *x;
}

/**
 * Set a's first name to "Jigglypuff".
 * Set the last name to "Ketchum".
 * Set the g number to 10, the gpa to 1.16.
 */
void one(Student* a){
	set_first_name(a,"Jigglypuff");
	set_last_name(a,"Ketchum");
	set_g_number(a,10);
	set_gpa(a,1.16);
}

/**
 * Copy the information from Student b to Student a.
 * (pointer parameters).
 */
void two(Student* a, Student* b){
	*a = *b;
}

/**
 * Copy the information from Student a to Student b.
 * (mixed variable type parameters).
 */

void three(Student a, Student* b){
	*b = a;
}

/**
 * Create and return a Student.  Give it the values
 * "T. Yoshisaur" (first_name)
 * "Munchakoopas" (last_name)
 * 1990		  (g_number)
 * 3.1		  (gpa)
 * Mario	  (roommate [defined above])
 * Remember: C is pass by copy ONLY.
 */
Student four(){

	Student a;
	a.first_name = "T. Yoshisaur";
	a.last_name = "Munchakoopas";
	a.g_number = 1990;
	a.gpa = 3.1;
	a.roommate = &Mario;
	return a;
}

/**
 * Create and return a Student*.  Give it the value
 * "Luigi" (first_name)
 * "Mario" (last_name)
 * 2       ( :( )
 * 3.54    (gpa [we know he's the smart one])
 * Remember: C is pass by copy ONLY.
 */
Student* five(){

	Student* c = (Student*)malloc(sizeof(Student));
	c->first_name = "Luigi";
	c->last_name = "Mario";
	c->g_number = 2;
	c->gpa = 3.54;
	
	return c;
}

/**
 * Create a hunk of memory we can use as an array of 10
 * Students.  Set the 4th element (meaning use array
 * index 3) to
 *
 * "Luigi" (first_name)
 * "Mario" (last_name)
 * 2       ( :( )
 * 3.54    (gpa [we know he's the smart one])
 */
Student* six(){

	Student* a = (Student*)malloc(sizeof(Student));
	a->first_name = "Luigi";
	a->last_name = "Mario";
	a->g_number = 2;
	a->gpa = 3.54;

	Student* arr = (Student*)malloc(10*sizeof(Student));
	arr[3] = *a;

	return arr;
}

/**
 * Seven will take a pointer to a pointer.  It should
 * create a hunk of memory that can be used as an array
 * of size 10, and will set the pointer correctly so
 * that the "array" is usable in main.
 * Set the 10th (index 9) element equal to
 *
 * "Luigi" (first_name)
 * "Mario" (last_name)
 * 2       ( :( )
 * 3.54    (gpa [we know he's the smart one])
 */
void seven(Student** students){
	
	*students = (Student*)malloc(10*sizeof(Student));
	Student* a= (Student*)malloc(sizeof(Student));
		
	a->first_name = "Luigi";
	a->last_name = "Mario";
	a->g_number = 2;
	a->gpa = 3.54;
	
	students[3] = a;
}

/**
 * Given a, b, and c calculate the first solution for
 * the quadratic equation (given below).
 *
 * -b + sqrt(b^2 - 4ac) / (2a)
 */
double quadratic(double a, double b, double c){
	return ((b*-1) +( sqrt((b*b) - (4*a*c)))) / (2*a);
}

/**
 * Given a "string" (a character array) and a length,
 * replace each lower case character with its uppercase
 * equivalent.
 *
 * Do not use any string functions provided by the library.
 * Merely check to see if each character is between the
 * range of values for a lowercase letter.  If it is,
 * replace it with the uppercase value equivalent.
 *
 * If you are writing more than five lines you are doing it wrong.
 */
#include <stdio.h>
void capitalize(char* str, size_t len){
	/*for (int i = 0; i <len; ++i){
		if(str[i]>= 97){
			str[i] = str[i]-32;
		}
		*/
	
	for(int i=0; i<=len; i++){
		 if(str[i]>=97&&str[i]<=122){
			str[i]=str[i]-32;
		 }
	}
}
