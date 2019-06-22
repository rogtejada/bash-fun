#!/bin/bash

readOperation(){
  echo CALCULATOR OPTIONS:
  echo 1 to sum
  echo 2 to sub
  echo 3 to multiply
  echo 4 to division
  echo 0 to close
  read userInput
}

readNumbers(){
  echo Enter first number
  read firstNumber

  echo Enter second number
  read secondNumber
}

sum(){
  readNumbers
  echo Sum:
  echo $firstNumber + $secondNumber | bc
}

sub(){
  readNumbers
  echo Sub:
  echo $firstNumber - $secondNumber | bc
}

multiply(){
  readNumbers
  echo multiply:
  echo $firstNumber \* $secondNumber | bc
}

division(){
  readNumbers
  echo Division:
  echo "scale=2; $firstNumber / $secondNumber" | bc
}

menu(){
  readOperation
  case $userInput in
    1)sum
    ;;

    2)sub
    ;;

    3)multiply
    ;;

    4)division
    ;;

    0)exit 0
    ;;

    *)echo Invalid Operation
    ;;
  esac
}

while true
do
  menu
done
