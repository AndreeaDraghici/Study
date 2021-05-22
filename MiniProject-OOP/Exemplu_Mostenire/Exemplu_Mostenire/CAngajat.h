#pragma once
#include"CPersoana.h"
class CAngajat:public CPersoana
{
	// mostenire publica
protected:
	string locMunca;
public:
	CAngajat(string nume, string adresa, string locMunca);
	~CAngajat();
	string getLocMunca();
	void setLocMunca(string locMunca);
};

