#include<iostream>
#include"CCreare_Labirint.h"
using namespace std;

int main()
{
	CCreare_Labirint elemente, labirint;

	labirint.afisare_labirint();
	elemente.creeaza_elementele_labirintului();
	elemente.afiseaza_elementele_labirintului();
}