#! /bin/bash -x
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
echo $hwin
x=$(($hwin/$temp))
Hpercentage=$(( $x * 100 ))
echo $Hpercentage
echo $twin
y=$(($twin/$temp))
Tpercentage=$(( $y * 100 ))
for KEY in "${!arr[@]}"; 
do
	echo $KEY
  echo "Value: ${arr[$KEY]}"
done
}
function coinDoublet() {
temp=$1
HHwin=0
HTwin=0
THwin=0
TTwin=0
for (( i=0 ; $i < $temp ; i++ ))
do
rand=$(($RANDOM%2))
rand1=$(($RANDOM%2))
if [ $rand -eq 1 -a $rand1 -eq 1 ]
then
	echo "HH wins"
	HHwin=$(( $HHwin + 1))
elif [ $rand -eq 1 -a $rand1 -eq 0 ]
then
        echo "HT wins"
        HTwin=$(( $HTwin + 1))
elif [ $rand -eq 0 -a $rand1 -eq 1 ]
then
        echo "TH wins"
        THwin=$(( $THwin + 1))
elif [ $rand -eq 0 -a $rand1 -eq 0 ]
then
        echo "TT wins"
        TTwin=$(( $TTwin + 1))
else 
	break
fi
done
echo $HHwin
x=$(($HHwin/$temp))
HHpercentage=$(( $x * 100 ))
echo $HTwin
y=$(($HTwin/$temp))
HTpercentage=$(( $y * 100 ))
echo $THwin
z=$(($THwin/$temp))
THpercentage=$(( $ * 100 ))
echo $TTwin
d=$(($hwin/$temp))
TTpercentage=$(( $d * 100 ))
arr=( $HHpercentage $HTpercentage $THpercentage $TTpercentge )
}
function coinTriplet() {
temp=$1
HHHwin=0
HHTwin=0
HTHwin=0
THHwin=0
HTTwin=0
TTHwin=0
TTTwin=0
for (( i=0 ; $i < $temp ; i++ ))
do
rand=$(($RANDOM%2))
rand1=$(($RANDOM%2))
rand2=$(($RANDOM%2))
rand3=$(($RANDOM%2))

if [ $rand -eq 1 -a $rand1 -eq 1 -a $rand2 -eq 1]
then
        echo "HHH wins"
        HHHwin=$(( $HHHwin + 1))
elif [ $rand -eq 1 -a $rand1 -eq 1 -a $rand2 -eq 0 ]
then
        echo "HHT wins"
        HHTwin=$(( $HHTwin + 1))
elif [ $rand -eq 1 -a $rand1 -eq 0 -a $rand2 -eq 1 ]
then
        echo "HTH wins"
        HTHwin=$(( $HTHwin + 1))
elif [ $rand -eq 0 -a $rand1 -eq 1 -a $rand2 -eq 1 ]
then
        echo "THH wins"
        THHwin=$(( $THHwin + 1))
elif [ $rand -eq 1 -a $rand1 -eq 0 -a $rand2 -eq 0 ]
then
        echo "HTT wins"
        HTTwin=$(( $HTTwin + 1))
elif [ $rand -eq 0 -a $rand1 -eq 1 -a $rand2 -eq 0 ]
then
        echo "THT wins"
        THTwin=$(( $THHwin + 1))
elif [ $rand -eq 0 -a $rand1 -eq 0 -a $rand2 -eq 1 ]
then
        echo "TTH wins"
        TTHwin=$(( $TTHwin + 1))
elif [ $rand -eq 1 -a $rand1 -eq 1 -a $rand2 -eq 1 ]
then
        echo "TTT wins"
        TTTwin=$(( $TTTwin + 1))
else
        break
fi
done
echo $HHHwin
x=$(($HHHwin/$temp))
HHpercentage=$(( $x * 100 ))
echo $HHTwin
y=$(($HHTwin/$temp))
HTpercentage=$(( $y * 100 ))
echo $HTHwin
z=$(($HTHwin/$temp))
THpercentage=$(( $ * 100 ))
echo $THHwin
d=$(($THHwin/$temp))
echo $HTTwin
d1=$(($HTTwin/$temp))
echo $THTwin
d2=$(($THTwin/$temp))
echo $TTHwin
d3=$(($TTHwin/$temp))
echo $TTTwin
d4=$(($TTTwin/$temp))
}


coinFlip 7
coinDoublet 8
coinTriplet 9
