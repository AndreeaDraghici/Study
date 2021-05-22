#pragma once

typedef struct complex
{
    double real;
    double imaginar;
    double real_1;
    double real_2;
    double numitor;

} nr_complex;

nr_complex impartire(nr_complex nr1, nr_complex nr2);
nr_complex adunare(nr_complex nr1, nr_complex nr2);
nr_complex scadere(nr_complex nr1, nr_complex nr2);
nr_complex inmultire(nr_complex nr1, nr_complex nr2);
nr_complex conjugare(nr_complex numar);