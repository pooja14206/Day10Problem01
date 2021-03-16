#! /bin/bash

read -p "enter a number " number1
read -p "enter a number " number2
read -p "enter a number " number3

result1=$((number1+number2*number3))
echo $result1

result2=$((number1*number2+number3))
echo $result2
