#pragma once
#include<iostream>
using namespace std;

class Scaner
{
protected:
	int rezolutie;
public:
	Scaner(int rezolutie = 1200) {
		this->rezolutie = rezolutie;
		cout << "Apel Constr. Scaner\n";
	}
	~Scaner() {
		cout << "Apel Destr. Scaner\n";
	}
	void scan(string);
};

