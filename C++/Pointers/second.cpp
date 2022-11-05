#include <iostream>

using namespace std;

int main(int argc, char const *argv[])
{
/*
Declaring and initializing pointer:
& is "adress of " operator -->:
*/

    int variable = 45;
    int *pointer_of_variable{&variable};

    cout << "Int : " << variable << endl;
    cout << "Adress in memory : " << pointer_of_variable << endl;

// Changing address stored in pointer.

    int variable_2 = 89;
    variable_2 =899;

    pointer_of_variable = &variable_2;

    cout << "Adress in memory : " << pointer_of_variable << endl;

    return 0;

    
}
