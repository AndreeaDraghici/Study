#pragma once
#include<iostream>
#include<string>

using namespace std;
class CAngajat
{
private:
	string nume;
	string data;
	string postul_ocupat;
	int salariu;
public:
	CAngajat(const CAngajat& a);
	CAngajat()
	{
		nume = " ";
		data = " ";
		postul_ocupat = " ";
		salariu = 0;
	}
	friend bool operator<(const CAngajat&, const CAngajat&);
	friend istream& operator >> (istream& in,CAngajat& aux);
	friend ostream& operator << (ostream& out, const CAngajat& aux);
};

