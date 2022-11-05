#!/bin/bash/

value=5
result=$((100 * $value + 5)) # 505 ; basic operations yaparken $(( )) syntaxı önemli.
echo $result

#Basic String operations
# ${#STRING} length of a string

#making substring:
STRING="this is a string"
start=1
end=3 #bu yoksa starttan sonraki tüm stringi algılar.
echo ${STRING:$start:$end} 

#replacing:
STRING="to be or not to be"
echo ${STRING[@]/be/eat}  #/be yerine //be yaparsan tüm be leri eat ile değiştirirsin. / yerine % yaparsan sonuncuyu.
                        # #ile başlarsan ile ile başlayan şeyler yerine oluyor.

