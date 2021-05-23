#include "CCreare_Labirint.h"
#include<iostream>

using namespace std;

void CCreare_Labirint::creare_labirint()
{
	cout << "introduceti dimensiunea labirintului: ";
	cin >> dimensiune;
	cout << "introduceti nr de locatii din labirint:"<<endl;
	for (i = 1; i <= dimensiune; i++)
		for (j = 1; j <= dimensiune; j++)
		{

			cin >> labirint[i][j];
		}
}



void CCreare_Labirint::afisare_labirint()
{
	cout << "nr locatilor din labirint sunt: " << endl;
	for (i = 0; i <dimensiune; i++)
	{
		for (j = 0; j <dimensiune; j++)
		{
			cout << labirint[i][j] << ' ';
		}
	}
}


void CCreare_Labirint::coordonate_pozitii()
{
	double x = 0, y = 0;
	int nrPuncte = 0;
	if (nrPuncte != 0)
	{
	

	}

}




void CCreare_Labirint::creeaza_elementele_labirintului()
{
	cout << "Creeaza nr de camere ale labirintului: "<<endl;
	cin >> nr_camere;
	cout << "Creeaza nr de usi ale labirintului: "<<endl;
	cin >> nr_usi;
	cout << "Creeaza nr de ziduri ale labirintului: "<<endl;
	cin >> nr_ziduri;
	cout << endl;
}

void CCreare_Labirint::afiseaza_elementele_labirintului()
{
	cout << "Numarul de camere ale labirintului este: " << nr_camere << endl;
	cout << "Numarul de usi ale labirintului este: " << nr_usi << endl;
	cout << "Numarul de ziduri ale labirintului este: " << nr_ziduri << endl;
}