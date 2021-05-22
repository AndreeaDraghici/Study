#include "CStudent.h"
#include"CPersoana.h"

// constructorul clasei derivate CStudent
CStudent::CStudent(string nume, string adresa, int an, float medie) :
	CPersoana(nume, adresa) 
{
	this->an = an;
	this->medie = medie;
}