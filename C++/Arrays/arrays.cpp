#include <iostream>

using namespace std;

int main(int argc, char const *argv[])
{
    int scores[10]; // array that storing ten integers.
    scores[0] = 66;
    scores[1] = 89;

    int scores_2[6] = {1,5,65,5}; // böyle oldugunda olmayan değerler  0 olacaktır.
/*
garbage valuelara dikkat edilmelidir. (line 10)
Assign and initilization is important.
*/

    int scores_3[] = {45,78,6}; //another way to declare array.

    for (size_t i = 0; i < 6; i++)
    {
        cout << scores_2[i] << endl;
        
    }

    // for each using:
    cout << endl<< endl;

    for(auto valueİ:scores_3){
        cout << valueİ <<endl;
    }
    

    // int a[]; error.


  /*
    CHAR ARRAYS

    you can directly print char arrays as string,
    but at the end of the array, you need to add
    '\0' for true output:
    */

    char say_hello[] = {'H','e','l','l','o','\0'};
    cout << say_hello << endl;

    char message[] {"Ceren"};

    return 0;
}
