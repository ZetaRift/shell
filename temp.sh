#!/bin/sh
 
#Temperature converter script
#subject to add new conversions

clear

echo "Enter conversion prefix.. enter 'help' for more info"
read r1

if [ "$r1" = "help" ]; then
        echo "Temperature converter shell script"
        echo "The syntax is; ./temp <conversion> <num> (exclude the brackets)"
        echo "Available conversions:"
        echo "cf ... Celsius to Fahrenheit"
        echo "fc ... Fahrenheit to Celsius"
        echo "kc ... Kelvin to Celsius"
        echo "ck ... Celsius to Kelvin"
        exit
fi
 

 
 
if [ "$r1" = "cf" ]; then
	echo "Celsius to Fahrenheit"
	echo "Enter value.."
	read r2
        temp=$(echo "$r2 * 1.8 + 32" | bc)
        echo "$r2 Celsius to Fahrenheit is: $temp"
        exit
fi
 
if [ "$r1" = "fc" ]; then
	echo "Fahrenheit to Celsius"
	echo "Enter value.."
	read r2
        temp=$(echo "($r2 - 32) * 5/9" | bc)
        echo "$r2 Celsius to Fahrenheit is: $temp"
        exit
fi
 
if [ "$r1" = "kc" ]; then
	echo "Kelvin to Celsius"
	echo "Enter value.."
	read r2
        temp=$(echo "$r2 - 273.15" | bc)
        echo "$r2 Kelvin to Celsius is: $temp"
        exit
fi
 
if [ "$1" = "ck" ]; then
        temp=$(echo "$r2 + 273.15" | bc)
        echo "$r2 Celsius to Kelvin is: $temp"
        exit
fi

if [ "$1" = "kc" ]; then
        temp=$(echo "$r2 - 273.15" | bc)
        echo "$r2 Kelvin to Celsius is: $temp"
        exit
fi
