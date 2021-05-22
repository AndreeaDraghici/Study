#include"complex.h"
#include<stdio.h>

nr_complex impartire(nr_complex nr1, nr_complex nr2)
{
    nr_complex rez,rez_final;

    rez.real_1 = (nr1.real * nr2.real) + (nr1.imaginar * nr2.imaginar);
    rez.real_2 = (nr2.imaginar * nr1.real) - (nr2.real * nr1.imaginar);

    rez.numitor = (nr1.imaginar * nr1.imaginar) + (nr2.imaginar * nr2.imaginar);

    rez_final.real = rez.real_1 / rez.numitor;
    rez_final.imaginar = rez.real_2 / rez.numitor;
  
    return rez_final;
}

nr_complex adunare(nr_complex nr1, nr_complex nr2)
{
    nr_complex suma;

    suma.real = nr1.real + nr2.real;
    suma.imaginar = nr1.imaginar + nr2.imaginar;

    return suma;
}

nr_complex scadere(nr_complex nr1, nr_complex nr2)
{  
   nr_complex diferenta;

   diferenta.real = nr1.real - nr2.real;
   diferenta.imaginar = nr1.imaginar - nr2.imaginar;

   return diferenta;
}

nr_complex inmultire(nr_complex nr1, nr_complex nr2)
{
    nr_complex produs;

    produs.real = (nr1.real * nr2.real - nr1.imaginar * nr2.imaginar);
    produs.imaginar = (nr1.real * nr2.real + nr1.imaginar * nr2.imaginar);

    return produs;
}

nr_complex conjugare(nr_complex numar)
{ 
    numar.imaginar = -numar.imaginar;
    numar.real = -numar.real;

    return numar;
}