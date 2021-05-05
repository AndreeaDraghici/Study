#include <iostream>
#include <string>

using namespace std;

int main()
{
    string months_list[12] = { "January","February","March","April","May","June","July","August","September","October","November","December" }, k;
    int n, rezultat;
    cin >> k >> n;
    for (int i = 0; i < 12; i++)
        if (months_list[i] == k)
            rezultat = i;
    cout << months_list[(rezultat + n) % 12];
    return 0;
}