#include <iostream>

using namespace std;

int main(int argc, char const *argv[])
{
    const size_t COUNT = 10;
    size_t i {0};
    while (i <COUNT)
    {
        cout << "Number: "<< i << endl;
        i++;
    }

    cout << endl;
    i = 0;

    do
    {
        cout << "Number: "<< i << endl;
        i++;
    } while (i < COUNT );


    return 0;
}
