#include "COferta.h"


COferta::COferta(const COferta& o)
{
	this->locatia = o.locatia;
	this->perioada = o.perioada;
	this->cost = o.cost;
	this->discount = o.cost;
}

bool operator>(const COferta& cost1, const COferta& cost2)
{
	return  cost1 > cost2;
}

void COferta::citire()
{
	cin >> locatia;
	cin >> perioada;
	cin >> cost;
	cin >> discount;
}

void COferta::afisare()
{
	cout << locatia;
	cout << endl;
	cout << perioada;
	cout << endl;
	cout << cost;
	cout << endl;
	cout << discount;
	cout << endl;
}

