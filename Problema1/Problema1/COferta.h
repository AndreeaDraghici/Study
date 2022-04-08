#pragma once
#include<string>
#include<iostream>

using namespace std;

class COferta
{
private:
	string locatia;
	string perioada; 
	int cost;
public:
	COferta(const COferta& o);//copiere 
	COferta()//implicit
	{
		locatia=" ";
		perioada=" ";
		cost = 0;
	}
	friend bool operator > (const COferta&, const COferta& );
	friend ostream& operator << (ostream& out, const COferta& o); // operatorul de insertie=inserare=iesire "<<" == cout
	friend istream& operator >> (istream& in, COferta& aux); //operatorul de extractie=extragere= intrare ">>" == cin
};

// friend= functie prietena, permite ca si paramaterii 2 obiecte
// daca nu avem friend, ce se intmapla?
// functie membra="primul" paramaetru este implicit ( paraametrul ascuns this)


// operator friend= nr de parametrii= aritatea operatorului = nr operenzilor asupra caroroa se aplica