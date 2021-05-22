#pragma once
#include"Imprimanta.h"
#include"Scaner.h"
class MultiFunctionala : public Imprimanta, public Scaner
{
public:
	MultiFunctionala(int rezI, int rezS) :
		Imprimanta(rezI), Scaner(rezS) 
	{
		cout << "Apel Constr. MultiFunctionala\n";
	}
	~MultiFunctionala() 
	{
		cout << "Apel Destr. MultiFunctionala\n";
	}
};

