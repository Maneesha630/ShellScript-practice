#!/bin/bash
echo "enter the number: "
read -s Number

if [ $Number -gt 20 ]
then
echo "Given number :$Number is greaterthan 20"
else
echo "Given number:$Number is lessthan 20"
fi