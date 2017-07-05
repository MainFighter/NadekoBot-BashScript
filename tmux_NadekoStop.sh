#!/bin/sh
clear
echo "Removing scripts that aren't needed..."

if [ -e tmux_NadekoAutoRestart.sh ]; then
	rm tmux_NadekoAutoRestart.sh
fi

if [ -e tmux_NadekoAutoRestartAndUpdate.sh ]; then
	rm tmux_NadekoAutoRestartAndUpdate.sh
fi
sleep 1

echo "Updating scripts..."

if [ -e tmux_NadekoStart.sh ]; then
	rm tmux_NadekoStart.sh
	wget -N https://raw.githubusercontent.com/MainFighter/NadekoBot-BashScript/1.4/tmux_NadekoStart.sh &> /dev/null
fi
sleep 1

choice=5
	clear
	echo ""
	echo "1. Stop."
	echo "2. Restart with Auto Restart."
	echo "3. Restart with Auto Restart and Update."
	echo "4. Exit."
	echo ""
	echo -n "What do you want to do? "
while [ $choice -eq 5 ] ; do
read choice

if [ $choice -eq 1 ] ; then
	echo ""
	echo "Stopping Nadekobot..."
	sleep 1
	tmux kill-session -t nadeko
else
	if [ $choice -eq 2 ] ; then
		echo ""
		echo "Restarting Nadekobot with Auto Restart..."
		sleep 1
		tmux kill-session -t nadeko
		tmux new-session -d -s nadeko 'wget -N https://github.com/Kwoth/NadekoBot-BashScript/raw/1.4/NadekoARN.sh &> /dev/null && bash NadekoARU_Latest.sh'
		echo ""
	else
		if [ $choice -eq 3 ] ; then
			echo ""
			echo "Restarting Nadekobot with Auto Restart and Update..."
			sleep 1
			tmux kill-session -t nadeko
			tmux new-session -d -s nadeko 'wget -N https://github.com/Kwoth/NadekoBot-BashScript/raw/1.4/NadekoARU_Latest.sh &> /dev/null && bash NadekoARU_Latest.sh'
			echo ""
		else
			if [ $choice -eq 4 ] ; then
				echo ""
				echo "Exiting..."
				echo ""
				sleep 1
				exit 0				
			fi
		fi
	fi
fi
done

exit 0