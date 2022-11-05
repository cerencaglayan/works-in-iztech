#!/bin/bash

#array declaration:
my_array=(elma muz "Fruit Basket" orange 5) #syntax önemli.
new_array[2]=kayısı
echo ${my_array[0]}
echo ${new_array[0]}

# ${#my_array[@]}  number of elements 