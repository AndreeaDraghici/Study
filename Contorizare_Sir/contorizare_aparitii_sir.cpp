#include "contorizare_aparitii_sir.h"

int cautare (char sir1[100], char sir2[100])
{
    int rezultat_cautare = 0, i, j;

    bool contor;

    for (i = 0; i <= strlen(sir1) ; i++)
    {
        contor = true;

        for ( j = 0; j < strlen(sir2); j++)
        {
            if (sir1[i+j] != sir2[j])
            {
                contor = false;
                break;
            }
        }
        if (contor == true && j==strlen(sir2))
        {

            rezultat_cautare++;
            j = 0;
        }

    }
    return rezultat_cautare;
}