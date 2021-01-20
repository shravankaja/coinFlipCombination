#/bin/bash -x
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
	hwin=$(( $hwin + 1 ))
else
	echo "Tails wins"
	twin=$(( $twin + 1 ))
fi
done
}
coinFlip 7
