#include <iostream>
#include <cmath>// for math functions.


using namespace std;

int main()
{
/*
Some methods:
*/

    // std::floor() , std::ceil() olarak.
    double number {7.6};
    cout << floor(number) << "<- FLOOR , CEIL ->" << ceil(number) << endl;
   
   
    double negative_number{-7.6};
    cout << abs(negative_number) << endl;

    // std::exp -> e^x 
    cout << exp(10) << endl ; // e^1

    // std::pow(a,b) a^b
    cout << pow(2,5) << endl;


    

    return 0;

}