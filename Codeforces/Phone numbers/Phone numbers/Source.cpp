#include <stdio.h>
#include <stdlib.h>

int main()
{
    int n, i;
    scanf("%d", &n);
    char sir[100];
    getchar();
    for (i = 0; i < n; i++){
        scanf("%c", &sir[i]);
    }
    for (i = 0; i < n; i++){
        putchar(sir[i]);
        if (i % 2 && i < n - (n % 2) - 2)
            putchar('-');
    }
    return 0;
}