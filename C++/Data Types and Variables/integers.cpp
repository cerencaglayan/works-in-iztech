#include <iostream>

using namespace std;

int main(){

    int number1 = 15; // in decimal
    int number2 = 017; // in octal
    // python için 0o17 şeklinde.

    int number3 = 0x0f; // in hexa
    int number4 = 0b1111; // in bin

    // output will be decimal in default.
    //cout<< number4;


    // curly braces provides initilizing to 0 by default.
    int dog_count {};

    int horse_count = {16};

    int cat_count{6};

    //functional variable initialization
    int apple_count(5); // information lost..
    // it can store 2.9 as 2(also classical method can)
    // as if {} cannot but it causes less safety.
    
  /*
    sizeof(apple_count) hafızada kapladığı alan. (byte)
  */






}