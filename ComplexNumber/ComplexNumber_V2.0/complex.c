#include"complex.h"
#include<stdio.h>

no_complex division(no_complex firstNumber, no_complex secondNumber)
{
    no_complex retValue,retFinalValue;

    retValue.complex_1 = (firstNumber.real * secondNumber.real) + (firstNumber.imaginary * secondNumber.imaginary);
    retValue.complex_2 = (secondNumber.imaginary * firstNumber.real) - (secondNumber.real * firstNumber.imaginary);

    retValue.num = (firstNumber.imaginary * firstNumber.imaginary) + (secondNumber.imaginary * secondNumber.imaginary);

    retFinalValue.real = retValue.complex_1 / retValue.num;
    retFinalValue.imaginary = retValue.complex_2 / retValue.num;

    return retFinalValue;
}

no_complex add(no_complex firstNumber, no_complex secondNumber)
{
    no_complex sum;

    sum.real = firstNumber.real + secondNumber.real;
    sum.imaginary = firstNumber.imaginary + secondNumber.imaginary;

    return sum;
}

no_complex substract(no_complex firstNumber, no_complex secondNumber)
{
    no_complex sub;

    sub.real = firstNumber.real - secondNumber.real;
    sub.imaginary = firstNumber.imaginary - secondNumber.imaginary;

    return sub;
}

no_complex multiply(no_complex firstNumber, no_complex secondNumber)
{
    no_complex prod;

    prod.real = (firstNumber.real * secondNumber.real - firstNumber.imaginary * secondNumber.imaginary);
    prod.imaginary = (firstNumber.real * secondNumber.imaginary + firstNumber.imaginary * secondNumber.real);

    return prod;
}

no_complex conjungation(no_complex number)
{
    number.imaginary = -number.imaginary;
    number.real = -number.real;

    return number;
}

no_complex readComplexNumber()
{
    no_complex retValue;
    printf("\nEnter the complex number \n");
    printf("The real part is: ");
    scanf("%lf",&retValue.real);
    printf("The imaginary part is: ");
    scanf("%lf",&retValue.imaginary);
    return retValue;
}

void PrintComplexNumber(no_complex number)
{
    printf("%4lf+%4lf*i\n",number.real,number.imaginary);
}
void AddComplexNumber()
{
    no_complex first=readComplexNumber();
    no_complex second=readComplexNumber();
    no_complex result=add(first, second);
}
void DisplayMenu()
{
    printf("-----OPERATIONS WITH COMPLEX NUMBERS-----");
    printf("1.Add\n");
    printf("2.Substract\n");
    printf("3.Multiply\n");
    printf("4.Divison\n");
    printf("5.Conjungation\n");
    printf("0.Exit\n");
    printf("\nYour choice: ");
}
int ReadOption(int startValidOption, int endValidOption)
{
    int retOption = -1;
    int validOption = 0;
    do
    {
        scanf("%d", &retOption);
        if (retOption >=  startValidOption && retOption <= endValidOption)
        {
            validOption = 1;
        }
        else
        {
            printf("Your choice is not valid. Enter a value between: %d and %d\n",
                   startValidOption, endValidOption);
        }
    }
    while (!validOption);
}
void DoMainMenu()
{
    int currentOption = -1;
    int continueLoop = 1;
    do
    {
        system("clear");
        DisplayMenu();
        currentOption = ReadOption(0, 5);

        switch(currentOption)
        {
        case 0:
            continueLoop = 0;
            break;

        case 1:
            printf("Add\n");
            AddComplexNumber();
            getchar();
            getchar();
            break;

        case 2:
            printf("Substract\n");
            getchar();
            getchar();
            break;

        case 3:
            printf("Multiply\n");
            getchar();
            getchar();
            break;
        case 4:
            printf("Divison\n");
            getchar();
            getchar();
            break;
        case 5:
            printf("Conjugation\n");
            getchar();
            getchar();
            break;

        default:
            continueLoop = 0;
            break;
        }
    }
    while(continueLoop);
}
