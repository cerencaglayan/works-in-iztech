#include <iostream>
#include <string>

using namespace std;

int main()
{
    
    cout << "Hello"<< endl;
    cerr<<"Error message"<< endl;
    clog << "Log message"<<endl;

    int number;
    string name;
     
    getline(cin,name);
    cin >> number;
    cout << "Number: " << number << " Name: " << name;


    return 0;
}
