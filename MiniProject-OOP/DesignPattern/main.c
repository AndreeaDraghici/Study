#include <stdio.h>
#include <stdlib.h>

int main()
{
    int n,s=0,a=2,b=3;
    printf("Introduceti n= ");
    scanf("%d",&n);
    printf("\n");
    while(n>0)
    {
        n=n-1; //n=4
        s=a+b; //s=2+3=5
        a=s; //a=5
        b=b*2;//b=6

     //si acum n=4, s=5, a=5 si b=6 si inlocuiesti asa in bucla cu noiile valori pana cand n= 1 pt ca n>0 in while
    }
    printf("Valoarea finala a lui s= %d",s);
    printf("\n");
    printf("Valoarea finala a lui a= %d",a);

}
