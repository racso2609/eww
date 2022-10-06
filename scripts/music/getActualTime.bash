#!/bin/bash

PROGRESS=$(playerctl metadata --format '{{ position }}')
DURATION=$(playerctl metadata --format '{{ mpris:length }}')

let "PORCENTAGE=$PROGRESS * 100 / $DURATION"


echo $PORCENTAGE
