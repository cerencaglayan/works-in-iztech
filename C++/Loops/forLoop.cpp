#include <iostream>

using namespace std;

int main(int argc, char const *argv[])
{
    /* I already know basic for loop.*/

    /*
    using size_t in for loop:
    size_t can be anything other than an int (maybe a struct).
    */
   for (size_t i = 0; i < 10000; i++)
   {
      cout <<"Hello, World!" << i << endl;
   }
   



    return 0;
}
