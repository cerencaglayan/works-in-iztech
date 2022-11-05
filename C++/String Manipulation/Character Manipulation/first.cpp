#include <iostream>

using namespace std;

// details : https://www.cplusplus.com/reference/cctype/
int main(int argc, char const *argv[])
{
    char karakter = 'A';

    cout << isalnum(karakter) << endl; // inside std::

    cout << isdigit(karakter) << endl;

    char hello[] = {"Ceren 06/05/2001 doğumlu."};

    for (auto character : hello)
    {
        if (isdigit(character))
        {
            cout << "Character: " << character << " " << endl;
        }
    }

    return 0;
}