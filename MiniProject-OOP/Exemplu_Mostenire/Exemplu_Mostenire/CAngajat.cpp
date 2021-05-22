#include "CAngajat.h"
#include"CPersoana.h"
// constructorul clasei derivate CAngajat
CAngajat::CAngajat(string nume, string adresa, string locMunca) :
	CPersoana(nume, adresa) 
{
	this->locMunca = locMunca;
}