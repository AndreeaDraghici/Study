#include "CTree.h"
#include<iostream>
#include<string>
using namespace std;

void CTree::Christmas_Tree()
{
    cout << "***** Christmas Tree Application *****" << endl;
    cout << endl;
    cout << endl;
    cout << "Merry Christmas!" << endl;
    cout << endl;
    cout << "Introduceti nr de crengi ale bradului :)) : ";
    cin >> dim;
    cout << "Introduceti forma globului :)) : ";
    cin >> brad;

    for (int i = 0; i < dim; i++)
    {
        spatiu = (dim - i) - 1;
        glob = (2 * i) + 1;
        string spatiu(spatiu, '_');
        string brad(glob, brad);
        cout << spatiu << brad << spatiu << endl;
    }
}