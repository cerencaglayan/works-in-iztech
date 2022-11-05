#include <iostream>

using namespace std;

int main(int argc, char const *argv[])
{

/*
Pointer is kind of variable that tores adresses.

*/

// * symbol is using for storing adresses as pointer.

/*Declaring pointers:*/

    int *pointer_number {}; // type int olan variable'ın adresi

    double *pointer_double {}; // " " double "" ""    " "    "".

    int number = 78;

 //   pointer_double = &number; error. ( '&' explained in second.cpp)


// initializing to nullptr for this is not pointing anywhere:

    int *pointer_number2 {nullptr};
/*
Important : size of pointer is 4 bytes.

*/

    return 0;
}
