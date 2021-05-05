#include <iostream>
#include <fstream>
using namespace std;

ifstream fin("dreptunghi.in");
ofstream fout("dreptunghi.out");

int main()
{
    int rezultat, n, m, i;
    fin >> n >> m;
    rezultat = n + m;

    while (m != 0) {
        i = n % m;
        n = m;
        m = i;
    }
    rezultat = rezultat - m - n;
    fout << rezultat;
    return 0;
}
