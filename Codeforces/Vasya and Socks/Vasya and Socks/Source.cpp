#include <iostream>
using namespace std;

int main()
{
    int n, m;
    cin >> n;
    cin >> m;

    int noua_achizitie = 0;
    int ultima_achizitie = 0;

    while (n > 0) {
        noua_achizitie++;
        n = n - 1;

        if (noua_achizitie - ultima_achizitie == m){
            n++;
            ultima_achizitie = noua_achizitie;
        }
    }
    cout << noua_achizitie;

    return 0;
}