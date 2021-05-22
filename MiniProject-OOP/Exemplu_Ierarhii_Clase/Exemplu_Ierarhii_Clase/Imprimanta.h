#pragma once
#include<iostream>
using namespace std;

class Imprimanta
{
protected:
	int rezolutie;
public:
	Imprimanta(int rezolutie = 600) 
	{
		this->rezolutie = rezolutie;
		cout << "Apel Constr.Imprimanta\n";
	}
	~Imprimanta() 
	{
		cout << "Apel Destr.Imprimanta\n";
	}
	void print(string);
};

