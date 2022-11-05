#include <iostream>

using namespace std;

int main(int argc, char const *argv[])
{
    /*
     Pointing chars in C++

    */
   char char_value = 'A';
   char *char_pointer = {nullptr};
   char_pointer = &char_value;

   cout << "Adress of char 'A' : " << char_pointer << endl; 

    // You can initilize c-string into a pointer asa a literal.
    char *pointer = {"This is a char pointer."};// but for now its a error. It gets 'T' as an char pointer.
    //However, it prints the meesage when we want to print the pointer itself:
    cout << pointer << endl;

    // if you can define the pointer (in line 18) as a const variable; you point up there it points array of const car. (And you get rid of errors.)


    /*
    Dereferencing *pointer --> 'T'
    */
    cout << *pointer << endl;

    return 0;
}
