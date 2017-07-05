#!/bin/sh
clear
echo ""
echo "NadekoBot tmux and misc scripts"
echo "Made by Main Fighter"
echo "mainfighter.com"
echo ""

choice=3
	echo ""
	echo "This script will remove unneeded scripts and update needed scripts"
	echo "I think it is safe to run when the bot is running but I'm not certain"
	echo "1. Continue."
	echo "2. Exit."
	echo ""
	echo -n "What do you want to do? "
while [ $choice -eq 3 ] ; do
read choice

if [ $choice -eq 1 ] ; then
	clear
	echo ""
	echo "Removing and updating scripts..."
	echo ""

	if [ -e linuxAIO.sh ]; then
		echo "Updating linuxAIO.sh..."
		rm linuxAIO.sh
		wget -N https://github.com/Kwoth/NadekoBot-BashScript/raw/1.4/linuxAIO.sh &> /dev/null
	fi

	if [ -e nadeko_installer_latest.sh ]; then
		echo "Removing nadeko_installer_latest.sh..."
		rm nadeko_installer_latest.sh
	fi

	if [ -e nadeko_run.sh ]; then
		echo "Removing nadeko_run.sh..."
		rm nadeko_run.sh
	fi

	if [ -e NadekoARN.sh ]; then
		echo "Removing NadekoARN.sh..."
		rm NadekoARN.sh
	fi

	if [ -e NadekoARU_Latest.sh ]; then
		echo "Removing NadekoARU_Latest..."
		rm NadekoARU_Latest.sh
	fi

	if [ -e nadekoautoinstaller.sh ]; then
		echo "Removing nadekoautoinstaller.sh..."
		rm nadekoautoinstaller.sh
	fi

	if [ -e NadekoAutoRestartAndUpdate.sh ]; then
		echo "Removing NadekoAutoRestartAndUpdate.sh..."
		rm NadekoAutoRestartAndUpdate.sh
	fi

	if [ -e tmux_NadekoAutoRestart.sh ]; then
		echo "Removing tmux_NadekoAutoRestart.sh..."
		rm tmux_NadekoAutoRestart.sh
	fi

	if [ -e tmux_NadekoAutoRestartAndUpdate.sh ]; then
		echo "Removing tmux_NadekoAutoRestartAndUpdate.sh..."
		rm tmux_NadekoAutoRestartAndUpdate.sh
	fi

	if [ -e NadekoSystemd.sh ]; then
		echo "Updating NadekoSystemd.sh..."
		rm NadekoSystemd.sh
		wget -N https://github.com/MainFighter/NadekoBot-BashScript/raw/1.4/NadekoSystemd.sh &> /dev/null
	fi

	if [ -e tmux_NadekoStart.sh ]; then
		echo "Updating tmux_NadekoStart.sh..."
		rm tmux_NadekoStart.sh
		wget -N https://github.com/MainFighter/NadekoBot-BashScript/raw/1.4/tmux_NadekoStart.sh &> /dev/null
	fi

	if [ -e tmux_NadekoStop.sh ]; then
		echo "Updating tmux_NadekoStop.sh..."
		rm tmux_NadekoStop.sh
		wget -N https://github.com/MainFighter/NadekoBot-BashScript/raw/1.4/tmux_NadekoStop.sh &> /dev/null
	fi
else
	if [ $choice -eq 2 ] ; then
		echo ""
		echo "Exiting..."
		echo ""
		sleep 1
		exit 0
	fi
fi

done

exit 0