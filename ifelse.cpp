#include <iostream>
int main()
{
	using namespace std;
	char ch;
	cin.get(ch);
	while( ch != '.')
	{
		if('\n' == ch)
			cout << ch;
		else
			cout << ch+1;
		cin.get(ch);
	}
	return 0;
}
