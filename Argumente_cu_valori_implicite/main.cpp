#include<iostream>
#include"adunare_vectori.h"

#define _CRT_SECURE_NO_WARNINGS

using namespace std;

int main()
{
    int* rezultat;
    int a[10], b[10], c[10], d[10];
    
   a[0]=b[0]=c[0]=d[0]=4;
    a[1] = 5;
    a[2] = 3;
    a[3] = 4;
   
    b[1] = 2;
    b[2] = 3;
    b[3] = 5;
    
    c[1] = 3;
    c[2] = 2;
    c[3] = 3;

    d[1] = 1;
    d[2] = 2;
    d[3] = 7;

    rezultat=Add(a, b, c, d);

    for (int i = 1; i < a[0]; i++)
    {
        cout << rezultat[i] << endl;
    }
    return 0;
}