#!/bin/bash

#conversation between two persons using variables, assign the name during execution
PERSON1=$1
PERSON2=$2

echo "$PERSON1" :: "Hi $PERSON2, Wlcome to my cafe?"
echo "$PERSON2" :: "Hi $PERSON1, Tankyou for welcoming!"
echo "$PERSON1" :: "$PERSON2 would like to have Coffe or Tea ?"
echo "$PERSON2" :: "Thankyou $PERSON1, i would like to have coffe"