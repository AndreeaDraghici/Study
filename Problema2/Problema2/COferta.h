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
		int discount;
public:
		COferta(const COferta& o);
		COferta()
		{
			locatia = " ";
			perioada = " ";
			cost = 0;
			discount = 0;
		}
		friend bool operator > (const COferta&, const COferta&);
		virtual void citire();
		virtual void afisare();
		
};


