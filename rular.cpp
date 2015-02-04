#include <iostream>
const int Len = 66;
const int Divs = 6;

int main()
{
	char rular[Len];
	int i;
	for(i=1;i < Len-2;i++)
		rular[i] = ' ';
	rular[Len - 1] = '\0';
	int max = Len - 2;
	int min = 0;
	rular[min] = rular[max] = '|';
	std::cout << rular << std::endl;
}
