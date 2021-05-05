#include <iostream>
#include<fstream>
#include<math.h>

//incomplete solution

const int n = 100000000;
const int k = 100;
const unsigned int modulo = 1000000007;

using namespace std;

ifstream fin("puteri.in");
ofstream fout("puteri.out");

int main()
{
    int n;
    unsigned long long suma = 0, k, putere;
    fin >> n;
    for (int i = 1; i <= n; i++){
        fin >> k;
        putere = pow(i, k);
        suma = (suma % modulo) + (putere % modulo);
    }
    fout << suma;
    return 0;
}