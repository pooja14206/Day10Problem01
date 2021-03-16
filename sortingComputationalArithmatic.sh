#! /bin/bash

read -p "enter a number " number1
read -p "enter a number " number2
read -p "enter a number " number3

result1=$((number1+number2*number3))
echo $result1

result2=$((number1*number2+number3))
echo $result2

result3=$((number3+number1/number2))
echo $result3

result4=$((number1%number2+number3))
echo $result4

declare -A storeResult

storeResult=(["n1+n2*n3"]=$result1 ["n1*n2+n3"]=$result2 ["n3+n1/n2"]=$result3 ["n1%n2+n3"]=$result4)
echo ${storeResult[@]}
