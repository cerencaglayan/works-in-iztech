#include <stdio.h>
#include <stdlib.h>

int main(int argc, char const *argv[])
{
// dinamik bellek yönetimi
    int *prt = malloc(3*sizeof(int)); // adres döndürür, pointer atayım kullanılabilir.
    int *zort = malloc(3*sizeof(int));;
    prt[0] = 45;
    prt[1] = 45;
    prt[2] = 45;
    printf(" %d",prt[0]);
    free(zort);
    prt = NULL;
    printf(" %d",prt[0]);
 
    printf("dgsdsg");

    return 0;
}
