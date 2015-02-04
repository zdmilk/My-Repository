#include <iostream>
int main()
{
	using namespace std;
	cout << "What year was your hourse built?\n";
	int year;
	cin >> year;
	cin.get();
//	int day;
//	cin >> day;
	char address[80];
	cin.getline(address,80);
	cout << "Year built:" << year << endl;
	cout << "Address:" << address << endl;
	cout << "Done!\n";
	return 0;
}
