#!/bin/bash/

#syntax :

# if [ condition ];
#then

#fi

NAME="Ceren"
if [ "$NAME" = "Ceren" ]; 
then
  echo "True - my name is indeed Ceren"
elif [ "$NAME" = "Elif" ]; then
  echo "Elom"
else
  echo "You must mistaken me for $NAME"
fi