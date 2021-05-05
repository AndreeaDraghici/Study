#include <iostream>

using namespace std;

int main()
{
    int n, i, a, b, di[100], suma = 0;
    cin >> n;
    for (i = 1; i < n; i++) {
        cin >> di[i];
    }
    cin >> a >> b;
    for (i = a; i < b; i++) {
        suma = suma + di[i];
    }
    cout << suma;

    return 0;
}