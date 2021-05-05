#include<iostream>
#include<fstream>
using namespace std;

ifstream fin("suma.in");
ofstream fout("suma.out");

int main()
{
    long long n, m;
    fin >> n >> m;

    long long s = 0;
    n %= m;
    for (int i = 1; i <= n; ++i) {
        s += i * (i - 1);
        s %= m;
    }
    fout << s << '\n';
    return 0;
}