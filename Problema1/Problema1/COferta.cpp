#include "COferta.h"


COferta::COferta(const COferta & o)
{
	this->locatia= o.locatia;  // this = pointer self....self=curent => this indica spre obiectul curent
	this->perioada= o.perioada;
	this->cost = o.cost;
}

bool operator>(const COferta& cost1, const COferta& cost2)
{
	return  cost1 > cost2;    /// bool conditie (.....) -> bool  doar verifica unicitatea conditie
	                          /// return true //1
	                          //// else
	                          //// return false //0
}


ostream& operator << (ostream& out, const COferta& o)
{
	out << o.locatia;
	out << endl;
	out << o.perioada;
	out << endl;
	out << o.cost;
	out << endl;

	return out;
}

istream& operator>>(istream& in, COferta& aux)
{
	in >> aux.locatia;
	in >> aux.perioada;
	in >> aux.cost;

	return in;
}
