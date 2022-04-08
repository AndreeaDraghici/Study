#include<iostream>
#include"CAngajat.h"

using namespace std;

int main()
{
	CAngajat* angajat1;

	angajat1=new CAngajat();

	cin >> * angajat1;
	cout <<* angajat1;

	delete angajat1;
}