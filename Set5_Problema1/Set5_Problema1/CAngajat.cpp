#include "CAngajat.h"

CAngajat::CAngajat(const CAngajat& a)
{
	this->nume = a.nume;
	this->data = a.data;
	this->postul_ocupat = a.postul_ocupat;
	this->salariu = a.salariu;
}

bool operator<(const CAngajat& valoare1, const CAngajat& valoare2)
{
	return valoare1 < valoare2;
}

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