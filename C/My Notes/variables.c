#include <stdio.h>

int main(int argc, char const *argv[])
{
    //1-Naming standarts
    int first_var ; // first character must be a letter.
/* 
! These are incorrect declerations:
int float;
int 1number;
double !double_number;
*/

    // Types:
    int second_var; 
    float second_float_var;
    double second_double_var;
    const char CHARACTER; // Constant variable.

    //2- Using printf()

    first_var = 5;

    printf("Today is the %dth of May!",first_var);
    /*
    *Here are some format symbols and meanings:
    * %d || %i => integer
    * %c => char
    * %f => float || double
    * %s => string
    ? for more : https://www.tutorialspoint.com/c_standard_library/c_function_printf.htm
    */

   // 3- Type casting : (type_name) expression
   second_double_var = 5.65;
   second_var = 9;
   // * Impilicitly way => a=b , Explicitly way => a = (type) b:
   second_var=second_double_var;
   second_var=(int) second_double_var;

   // You can convert characters to integer corresponding value for each char. 
   char character = 'A';
   second_var = (int) character;
   printf("\nsecond_var : %d ",second_var);

    return 0;



}
