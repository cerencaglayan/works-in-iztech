#include <iostream>

using namespace std;

int array[4];

int enterArrays(){
    int number;
    cout<<"Enter a number:";
    cin >> number;
    return number;
}

int strings(){

    return 0;
}

int main(){
   

    int arr[4] = { 6, 0, 9, 6 };
    cout << sizeof(array);

    for (int i = 0; i <sizeof(array) ; i++)
    {
       int number = enterArrays();
       array[i] = number;

    }
    
    cout << array[2];
    return 0;

}