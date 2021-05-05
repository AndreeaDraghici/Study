#include"cifra.h"
#include<fstream>
#include<iostream>
using namespace std;
ifstream fin("cifra.in");
ofstream fout("cifra.out");


int c[10][5], s[101];


void calculation() {
    for (int i = 1; i <= 9; i++) {
        c[i][1] = i;
        for (int j = 2; j <= 4; j++)
            c[i][j] = (c[i][j - 1] * i) % 10;
    }
}

int resolve(int i) {
    int r = i % 4;
    if (r == 0)
        r = 4;

    return c[i % 10][r];
}

void calculation2() {
    for (int i = 1; i <= 100; i++)
        s[i] = (s[i - 1] + resolve(i)) % 10;
}

void solve() {
    string nr;
    fin >> nr;
    int r = 0;
    for (int i = max(0, (int)nr.size() - 2); i <= (int)nr.size() - 1; i++)
        r = r * 10 + nr[i] - '0';

    fout << s[r] << "\n";
}

void test() {
    int t;
    fin >> t;
    while (t--)
        solve();
}
