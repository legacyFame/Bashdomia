#!/bin/bash

let "hi=3+3"
echo $hi


if ((1 > 1))
then
   echo $((1==0))
elif((1<1))
then
   echo Elif
else
    echo Greater Than
fi

while ((1<1))
 do
  echo "hi"
done

for val in {1..5}
do echo $val
done


fact (){
  if (($1 <=0))
then
   return $1
   fi
}

fact(){
  num=$1
  if (($num<=1))
  then
      echo 1 #tried return and $# to access didnt work
  else
      x=$(fact $((num-1))) # Piped o/p to x.
      echo $((num*x))
  fi

  }

fact 4