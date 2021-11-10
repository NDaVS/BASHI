#!/usr/bin
echo "Input username:" #login
read username

#userOpts

echo "Input group name:[name/n]" #group
read groupName

if [ groupName == "n" ]
then
	groupName=""
else GgroupName=" -g $groupName "
	echo $grou
	sudo groupadd $groupName
fi



sudo useradd $GgroupName $username

echo "Input start password:"
sudo passwd $username

#passwdOpt

echo "Input max day:[days/n]" 
read day

if [ day != "n" ]
then
	day=" -x $day"
fi

echo "Input warn days:[days/n]"
read warnDays

if [ warnDays != "n" ]
then
	warnDays=" -M $warnDays"
else warnDays=""
fi

sudo passwd $day -e $username
sudo chage $warnDays $username
