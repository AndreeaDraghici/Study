#include <stdio.h>
#include"complex.h"
#define _CRT_SECURE_NO_WARNINGS

int main()
{
    nr_complex rezultat,rezultat_conj_nr1,rezultat_conj_nr2;
    nr_complex n1, n2;

    printf("partea reala pt nr1: ");
    scanf_s("%lf", &n1.real); 

    printf("partea imaginara pt nr1: ");
    scanf_s("%lf", &n1.imaginar);

    printf("\n");
    printf("partea reala pt nr2: ");
    scanf_s("%lf", &n2.real);

    printf("partea imaginara nr2: ");
    scanf_s("%lf", &n2.imaginar);

    rezultat = conjugare(n2);
    printf("\nrezultatul conjugarii: %.1lf + ( %.1lf ) i\n", rezultat.real, rezultat.imaginar);

    rezultat_conj_nr1 = inmultire(n1, conjugare(n2));
    rezultat_conj_nr2= inmultire(n2, conjugare(n2));

    rezultat.real = 0;
    rezultat.imaginar = 0;

    rezultat = impartire(n1, n2);
    
    printf("\nrezultatul operatiei de impartire este: %.1lf + ( %.1lf ) i\n", rezultat.real, rezultat.imaginar);

    printf("\nrezultatul final este: %.1lf / %.1lf + %.1lf / ( %.1lf ) i = %.1lf + ( %.1lf ) i\n", rezultat_conj_nr1.real,rezultat_conj_nr1.imaginar,rezultat_conj_nr2.real,rezultat_conj_nr2.imaginar,rezultat_conj_nr1.real/rezultat_conj_nr1.imaginar,rezultat_conj_nr2.real/rezultat_conj_nr2.imaginar);
     
    return 0;
}