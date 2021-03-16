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
echo "dictionary " ${storeResult[@]}

declare -a storeDic

count=0
for value in ${storeResult[@]}
do
	storeDic[$count]=$value
	count=$((count+1))
done
echo "array " ${storeDic[@]}


for (( i=0; i<4; i++ ))
do
	for (( j=$i; j<4; j++ ))
	do
		if [ ${storeDic[$i]} -lt ${storeDic[$j]} ]
		then
			temporary=${storeDic[$i]}
			storeDic[$i]=${storeDic[$j]}
			storeDic[$j]=$temporary
		fi
	done
done
echo "element of the array sorted in descending order: " 
for (( i=0; i<4; i++ ))
do
	echo ${storeDic[$i]}
done

for (( i=0; i<4; i++ ))
do
        for (( j=$i; j<4; j++ ))
        do
                if [ ${storeDic[$i]} -gt ${storeDic[$j]} ]
                then
                        temporary=${storeDic[$i]}
                        storeDic[$i]=${storeDic[$j]}
                        storeDic[$j]=$temporary
                fi
        done
done
echo "element of the array sorted in assending order: "
for (( i=0; i<4; i++ ))
do
        echo ${storeDic[$i]}
done
