#!/bin/bash

target="bmp"
destination="png"

# dealing with arguments
if [ "$#" -lt 1 ];then
	target="bmp"
	destination="png"
elif [ "$#" -lt 2 ];then
	target="$1"
	destination="png"
else
	target="$1"
	destination="$2"
fi


echo "========== start =========="
num=0
for entry in *
do
  ext=`echo $entry | rev | cut -d "." -f 1 | rev`
  name=`echo $entry | rev | cut -d "." -f 2 | rev`
  if [ "$ext" = $target ]; then
  	i=$(($i + 1))
  	sips -s format $destination $entry --out $name.$destination
  fi
  # sips -s format png img/g10.bmp --out img/g10.png
done
echo "total = $i"
echo "========== done =========="
