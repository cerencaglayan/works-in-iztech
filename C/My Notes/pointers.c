#include <stdio.h>

int main(int argc, char const *argv[])
{
    //* Definition: Pointers are variables that 'points' to adress of those variables.
    //* Syntax: type* var_name OR type *var_name, &var__name ==> shows the reference of var_name
    // -> You can also dereference like that : var_name* and then , use as regular variable :
    int var = 200;
    int *second_var = &var;
    *second_var = 50; // -> change var with pointer.
    //-> structs point as : struct struct_name* var_name; .. 
    printf("%d \n", var);

    // todo : add more examples.

    //* Pointer Arithmetics
    //-> only possible art. operations are + and -. It changes the adress that they point.
    //-> it can be used by arrays since the are consecutive in adress.


    return 0;
}
