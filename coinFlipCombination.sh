#! /bin/bash 
function coinFlip() {
temp=$1
hwin=0
twin=0
for (( i=0 ; $i < $temp ; i++ ))
do
rand=$(($RANDOM%2))
if [ $rand  -eq 1 ]
then 
	echo "Head Wins"
	z='heads'
	hwin=$(( $hwin + 1 ))
	arr[i]=$hwin
else
	echo "Tails wins"
	s='tails'
	twin=$(( $twin + 1 ))
	arr[i]=$twin
fi
done
for KEY in "${!arr[@]}"; 
do
	echo $KEY
  echo "Value: ${arr[$KEY]}"
done
}
coinFlip 7
