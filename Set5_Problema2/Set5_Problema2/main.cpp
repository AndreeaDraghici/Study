#include<iostream>
#include"CAngajat.h"
#include"CAngajat_Conducere.h"
#include"CAngajat_Executie.h"
#include"CAngajat_Financiar.h"

using namespace std;

int main()
{
	//CAngajat* angajat[2];

	CAngajat* angajat1 = new CAngajat_Conducere;
	angajat1->citire();
	angajat1->afisare();
	delete angajat1;

	CAngajat* angajat2 = new CAngajat_Executie;
	angajat2->citire();
	angajat2->afisare();
	delete angajat2;

	CAngajat* angajat3 = new CAngajat_Executie;
	angajat3->citire();
	angajat3->afisare();
	delete angajat3;
 

	/*
	angajat[0] = new CAngajat;
	angajat[0]->citire();
	angajat[0]->afisare();
	delete[]angajat[0];

	angajat[1] = new CAngajat;
	angajat[1]->citire();
	angajat[1]->afisare();
	delete[]angajat[1];
	*/

	return 0;
}