#include<iostream>
#include"COferta_Extra.h"
#include"COferta_Iarna.h"
#include"COferta_Vara.h"

using namespace std;

int main()
{
	COferta* oferta1 = new COferta_Extra;
	oferta1->citire();
	oferta1->afisare();
	delete oferta1;

	COferta* oferta2 = new COferta_Iarna;
	oferta2->citire();
	oferta2->afisare();
	delete oferta2;

	COferta* oferta3 = new COferta_Vara;
	oferta3->citire();
	oferta3->afisare();
	delete oferta3;

	return 0;
}