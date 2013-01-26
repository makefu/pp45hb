#!/bin/bash

PART_SIZE=1024
WIDTH=20227
HEIGHT=800

FILES=level_up.png level_down.png
FILE=level_up.png

XP=0
YP=0
Y=0
while test $Y -lt $HEIGHT
do
    X=0
    XP=0
    while test $X -lt $WIDTH
    do
        echo "convert ../assets/level_up.png -crop ${PART_SIZE}x${PART_SIZE}+$X+$Y ../assets/level_up-$XP-$YP.png"
        convert ../assets/$FILE.png -crop ${PART_SIZE}x${PART_SIZE}+$X+$Y ../assets/$FILE-$XP-$YP.png
        X=$(($X + $PART_SIZE))
        XP=$(($XP + 1))
    done
    Y=$(($Y + $PART_SIZE))
    YP=$(($YP+1))
done
