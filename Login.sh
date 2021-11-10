#!/usr/bin

echo "Login"

echo "Input your login:"
read login

echo "Input your password:"
read passwd

k=1
while  IFS= read -r line  
do
	STR=($(echo $line | tr " " "\n")) #Make array from string (login, password)

	if [ $login == ${STR[0]}  ]
	then
		if [ $passwd == ${STR[1]} ]
		then 
			echo "Bratik, tut voshol kto-to!!!"
			k=0
		fi
	fi

done < passwds.txt
if [ $k == 1 ]
then
	echo "YOU SHALL NOT PASS..."
fi
