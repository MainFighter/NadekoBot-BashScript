#!/bin/sh

clear
echo ""
echo "NadekoBot tmux and misc scripts"
echo "Made by Main Fighter"
echo "mainfighter.com"
echo ""

choice=4
	echo ""
	echo "1. Auto Restart and no update."
	echo "2. Auto Restart update."
	echo "3. Exit."
	echo ""
	echo -n "What do you want to do? "
while [ $choice -eq 4 ] ; do
read choice

if [ $choice -eq 1 ] ; then
	echo ""
	echo "Starting Nadeko with Auto Restart..."
	sleep 1
	wget -N https://github.com/MainFighter/NadekoBot-BashScript/raw/1.4/tmux_NadekoAutoRestart.sh &> /dev/null
	bash tmux_NadekoAutoRestart.sh
else
	if [ $choice -eq 2 ] ; then
		echo ""
		echo "Starting Nadeko with Auto Restart and Update..."
		sleep 1
		wget -N https://github.com/MainFighter/NadekoBot-BashScript/raw/1.4/tmux_NadekoAutoRestartAndUpdate.sh &> /dev/null
		bash tmux_NadekoAutoRestartAndUpdate.sh
		echo ""
	else
		if [ $choice -eq 3 ] ; then
			echo ""
			echo "Exiting..."
			echo ""
			sleep 1
			exit 0
		fi
	fi
fi
done

exit 0
