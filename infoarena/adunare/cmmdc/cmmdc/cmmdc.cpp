#include <iostream>
using namespace std;

int cmmdc(int m, int n){
    while ((m != n) && (m > 0) && (n > 0)) {
        if (m > n)
            m = m - n;
        else
            n = n - m;
    }

    return m;
}
