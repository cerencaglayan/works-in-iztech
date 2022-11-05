#include <iostream>
#include <cstring>

using namespace std;

int main(int argc, char const *argv[])
{
    // length of a string

    /*
    We can use this method both variables and pointers.
    */

    const char hello[]{"Hello,its me."};
    const char *hello_pointer{"Hello,its me."};

    cout << strlen(hello) << endl; // its defined ctring header file.
    cout << strlen(hello_pointer) << endl;

    // comparing strings

    /*
    This method compares two strings as lexicographical order.
    details : https://www.cplusplus.com/reference/cstring/strcmp/




    */
    const char kazan[] = "Kazan";
    const char kozan[]{"Kozan"};

    cout << strcmp(kozan, kazan) << endl;
    cout << strcmp(kazan, kozan) << endl;
    return 0;
}
