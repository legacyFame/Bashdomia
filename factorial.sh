#fact(){
#   num = $1
#   if (($num<=0))
#   then
#      return 1
#   else
#      return fact $num-1
#  fi
#}
#
#fact 10
#Will not work .. Remember echo works better than return


fact(){
  num=$1
  if (($num<=1)) 
  then 
      echo 1 #tried return and $# to access didnt work Echo works like return
  else
      x=$(fact $((num-1))) # Piped o/p to x. 
      echo $((num*x)) 
  fi
}

fact 4
# echo $#


echo fact 5

