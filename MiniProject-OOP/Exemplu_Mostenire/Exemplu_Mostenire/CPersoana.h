#pragma once
#include<iostream>
#include<string>
using namespace std;

class CPersoana
{
protected:
	string nume;
	string adresa;
public:
	CPersoana(string, string);
	~CPersoana();
	void afisareDate();
	string getNume();
	string getAdresa();
	void setAdresa(string);
};

