#include <iostream>

using namespace std;

int main()
{
    int a, b;
    int factorial = 1;
    cin >> a >> b;
    for (int i = 1; i <= min(a, b); i++){
        factorial = factorial * i;
    }
    cout << factorial;
    return 0;
}