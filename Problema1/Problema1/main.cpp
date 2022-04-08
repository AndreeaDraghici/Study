#include<iostream>
#include"COferta.h"

using namespace std;

int main()
{
	COferta *oferta[1];
	int N;
	cin >> N;

	for (int i = 0; i < N; i++)
	{
		oferta[i] = new COferta;
		cin >> *oferta[i];
		cout << *oferta[i];
		delete[] oferta[i];
	}


	return 0;
}