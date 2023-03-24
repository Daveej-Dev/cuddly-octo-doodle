/*
	Exercise 3
	Prompt: Write a C program to print a block F using the hash (#),
	where the F has a height of six characters and width of five and
	four characters. And also print a very large 'C'.
*/
#include <stdio.h>
void displayF()
{
	puts("######");
	puts("#");
	puts("#");
	puts("#####");
	puts("#");
	puts("#");
	puts("#");
}
void displayC()
{
	puts("   ######");
	puts(" ##      ##");
	puts("#");
	puts("#");
	puts("#");
	puts("#");
	puts("#");
	puts(" ##      ##");
	puts("   ######");
}
int main(int argc, char** argv)
{
	displayF();
	puts("");
	displayC();
	return 0;
}
