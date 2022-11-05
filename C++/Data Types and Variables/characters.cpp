#include <iostream>

using namespace std;

int main(){

    char character_a = {'a'};
    char character_b ='b';

    char value = 65; // ascii character code for 'A'

    cout << "value : " << value  << endl; // prints char.
    // for nümerical form:
    cout << static_cast<int>(value);//transforms between data types.


    return 0;
}