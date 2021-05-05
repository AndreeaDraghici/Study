#include <iostream>
#include <fstream>
#include "cmmdc.h"
using namespace std;

ifstream fin("cmmdc.in");
ofstream fout("cmmdc.out");

int main()
{
    int a, b, rezultat;
    fin >> a >> b;
    rezultat = cmmdc(a, b);
    if (rezultat == 1){
        fout << "0";
    }
    else{
        fout << rezultat;
    }

    return 0;
}