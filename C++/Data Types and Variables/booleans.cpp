#include <iostream>

using namespace std;

int main(){

    bool condition = true;
    
    bool yanlış = false;

    if (condition) cout << "Merhaba";
    else cout << "Yoo";

    cout << endl;
    cout << condition; // 1 
    cout << boolalpha; // çıktı true ve false olarak yazdırır.
    cout << endl;
    cout << condition; // true

    return 0;
}