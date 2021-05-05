#include <iostream>
#include <fstream>

using namespace std;

ifstream fin("adunare.in");
ofstream fout("adunare.out");

int main()
{
    int a, b, suma = 0;

    fin >> a;
    fin >> b;
    suma = a + b;
    fout << suma;

    return 0;
}