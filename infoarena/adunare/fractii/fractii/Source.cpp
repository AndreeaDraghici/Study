#include <iostream>
#include <fstream>
using namespace std;

int n, result[1000005];

ifstream fin("fractii.in");
ofstream fout("fractii.out");

int main()
{
    fin >> n;
    for (int i = 1; i <= n; i++) {
        result[i] = i - 1;
    }
    for (int i = 2; i <= n; i++) {
        for (int j = 2 * i; j <= n; j += i) {
            result[j] =result[j]- result[i];
        }
    }
    long long sum = 0;
    for (int i = 1; i <= n; i++) {
      
        sum =sum+result[i];
    }
    fout << sum * 2 + 1;
    return 0;
}