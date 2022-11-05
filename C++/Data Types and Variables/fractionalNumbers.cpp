#include <iostream>

using namespace std;

int main(){

/*
sizeof() --> double 8 , float 4 , long double 16.

*/

    double x = {};
    double y = {};
    double z = 8;
    
    double result = x/y; // nan
    cout << result;
    return 0;
}