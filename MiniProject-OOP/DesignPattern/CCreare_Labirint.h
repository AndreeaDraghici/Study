#pragma once
class CCreare_Labirint
{
protected:

	int nr_camere;
	int nr_usi;
	int nr_ziduri;
	int i, j, dimensiune;
	int labirint[5][5];

public:
	void creare_labirint();
	void afisare_labirint();
	void coordonate_pozitii();
	void creeaza_elementele_labirintului();
	void afiseaza_elementele_labirintului();
};

