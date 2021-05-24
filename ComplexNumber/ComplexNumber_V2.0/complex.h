#ifndef COMPLEX_H_INCLUDED
#define COMPLEX_H_INCLUDED

typedef struct complex
{
    double real;
    double imaginary;
    double complex_1;
    double complex_2;
    double num;

} no_complex;

no_complex division(no_complex firstNumber, no_complex secondNumber);
no_complex add(no_complex firstNumber, no_complex secondNumber);
no_complex substract(no_complex firstNumber, no_complex secondNumber);
no_complex multiply(no_complex firstNumber, no_complex secondNumber);
no_complex conjugation(no_complex number);
no_complex readComplexNumber();

void PrintComplexNumber(no_complex number);
void DisplayMenu();
void AddComplexNumber();

#endif // COMPLEX_H_INCLUDED
