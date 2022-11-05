#!/bin/bash

#script file calıstırırken alınan argümanlarla ilerlemeyi sağlamak:

echo "File name is "$0 # holds the current script
echo $3 # $3 holds 3rd one
Data=$5
echo "A $Data costs just \$6."
echo $#  # argüman sayısı
echo $@ # tüm argümanlar