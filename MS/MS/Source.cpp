#include<iostream>
#include<vector>
#include<math.h>
#include<time.h>
#include<stdlib.h>
#include <stdio.h>

using namespace std;


void test(vector<double> numarGenerat) {

	double num = numarGenerat.size();
	double media = -1 / (num - 1);
	double varianta = 1.0 / (num - 1) * sqrt(num * (num - 3) / (num - 1));
	double valoarePozitiva = (media - 2 * varianta);
	double valoareNegativa = (media + 2 * varianta);
	double suma1 = 0, suma2 = 0, suma3 = 0;

	printf("Numerele sunt:\n");
	for (int idx = 0; idx < numarGenerat.size() - 1; ++idx) {

		suma1 += numarGenerat[idx] * numarGenerat[(idx + 1) % (int)num];
		suma2 += numarGenerat[idx];
		printf("%f", numarGenerat[idx]);
		suma3 += numarGenerat[idx] * numarGenerat[idx];

	}
	
	double autocorelatie = (num * suma1 - suma2 * suma2) / (num * suma3 - suma2 * suma2);

	printf( "Valoarea negativa este: %f",valoareNegativa);
	printf( "Valoarea pozitiva este: %f", valoarePozitiva);
	printf( "Autocorelatia este: %f", autocorelatie);

	if (valoareNegativa < autocorelatie && autocorelatie < valoarePozitiva) {

		printf("Generatorul de numere aleatoare a trecut testul");
	}
	else {
		printf("Generatorul de numere aleatoare a picat testul");
	}
}

void testMultiplicativ() {

	int maxRand = 7789;
	int rand = time(0) % maxRand;

	vector<double> numere;

	do {

		rand = rand * rand / 100 % maxRand;
		numere.push_back((double)rand/maxRand);

	} while ((int)rand % 100);

	test(numere);
}

int main() {
	vector<double> vector;
	
	test(vector);
	

	return 0;
}