/*
	Exercise 4
	Write a C program to print the following characters in reverse.
	Test Characters: 'X', 'M', 'L'.
*/
#include <stdio.h>
int main(int argc, char** argv)
{
	char first = 'X';
	char second = 'M';
	char third = 'L';
	printf("The reverse of %c%c%c is %c%c%c\n", first, second, third, third, second, first);
	return 0;
}
