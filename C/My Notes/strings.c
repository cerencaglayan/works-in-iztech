#include <stdio.h>

int main(int argc, char const *argv[])
{
    //* 1- Declaration
    // We can show strings as a array of chars like:
    char str[] = {'H', 'e', 'l', 'l', 'o', ' ', 'W', 'o', 'r', 'l', 'd', '\0'}; // means Heşşp World
    printf(str);

    // -> Important : \0 indicates last of array and must be added at the end after initialising.
    // -> it is a 'null' character.

    char str[] = "Hello World"; // you can also create a string like that.
    // ! note that even we don't add null character; size of array will be same!

    //? for more : https://www.codecademy.com/courses/learn-c/lessons/strings-c/exercises/creating-and-initializing-strings

    //* 2- Modification
    // -> String modification is done by char modification, since they are char arrays:
    // -> str[index] = char;

    //* 3- Popular String functions:

    /*
    * puts() & gets() => input&output examination . for more : https://www.upgrad.com/blog/string-fuctions-in-c/
    * strlen() => length of the string. IT DOES NOT COUNT NULL FACTOR!
    * strcpy() => copy string to another.
    * strcat() => concatinates strings.
    ? more : https://www.javatpoint.com/c-string-functions
    */

    return 0;
}
