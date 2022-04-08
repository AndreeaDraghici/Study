#include "CAngajat.h"

CAngajat::CAngajat(const CAngajat& a)
{
	this->nume = a.nume;
	this->data = a.data;
	this->postul_ocupat = a.postul_ocupat;
	this->salariu = a.salariu;
}

void CAngajat::citire()
{
	cout << "citeste nume ";
	cin >> nume;
	cout << "citeste data ";
	cin >> data;
	cout << "introduceti post ";
	cin >> postul_ocupat;
	cout << "citeste salariu ";
	cin >> salariu;
}

void CAngajat::afisare()
{
	cout << "numele este "<<nume;
	cout << endl;
	cout << "data este "<<data;
	cout << endl;
	cout << "postul este "<<postul_ocupat;
	cout << endl;
	cout << "salariul este "<<salariu;
	cout << endl;
}
/*
istream& operator>>(istream& in, CAngajat& aux)
{
	in >> aux.nume;
	in >> aux.data;
	in >> aux.postul_ocupat;
	in >> aux.salariu;

	return in;
}
ostream& operator << (ostream& out, const CAngajat& aux)
{
	out << aux.nume;
	out << endl;
	out << aux.data;
	out << endl;
	out << aux.postul_ocupat;
	out << endl;
	out << aux.salariu;
	out << endl;

	return out;
}
*/