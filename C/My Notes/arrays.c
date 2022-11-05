#include <stdio.h>

int main(int argc, char const *argv[])
{
    // * Array is the thing that i am familiar with Java, Pyhthon etc.

    // 1- Array declaration :
    //! int[arrraySize] is a wrong declaring, int name_var[] instead:
    int numbers[5]; // or :
    int age[] = {7, 27, 34, 63};

    // !in line 8 we declared numbers, but after we assign like : numbers = {45,8,9,89,50};
    // ! IT WILL BE AN ERROR. Dont spesify arraySize unless it is certain before coding.

    // 2- Modifying & Accessing :

    // 2. a) Example of modifying by input value :

    char letters[2] = {'R', 'P'};
    char letter ;
    scanf("%c", &letters[0]);
    printf("%c \n", letters[0]);


  
    //* sizeof() : gives a byte size : for using length of array => sizeof(arr)/sizeof(type) .
 
    return 0;
}
