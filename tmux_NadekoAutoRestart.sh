#!/bin/sh

clear
echo ""
echo "NadekoBot tmux scripts"
echo "Made by Main Fighter"
echo "mainfighter.com"
echo ""

choice=4
	echo "1. Attach tmux session."
	echo "2. Don't attach tmux session."
	echo "3. Exit."
	echo ""
	echo -n "What do you want to do? "
while [ $choice -eq 4 ] ; do
read choice

if [ $choice -eq 1 ] ; then
	echo ""
	tmux new-session -d -s nadeko 'wget -N https://github.com/Kwoth/NadekoBot-BashScript/raw/1.4/NadekoARN.sh && bash NadekoARU_Latest.sh'
	tmux a -t nadeko
else
	if [ $choice -eq 2 ] ; then
		echo ""
		tmux new-session -d -s nadeko 'wget -N https://github.com/Kwoth/NadekoBot-BashScript/raw/1.4/NadekoARN.sh && bash NadekoARU_Latest.sh'
	else
		if [ $choice -eq 3 ] ; then	
			echo ""
			exit 0
		fi
	fi
fi
done

exit 0
