#!/bin/sh

# Valid Parms
# autorestart - Auto Restart Bot
# autorestartupdate - Auto Restart Bot and Auto Update
parms="${2}"

start)
	if [ $parms -eq autorestart ] ; then
		tmux new-session -d -s nadeko 'curl -L https://github.com/Kwoth/NadekoBot-BashScript/raw/1.4/NadekoARN.sh | sh'
	else
		if [ $parms -eq autorestartupdate ] ; then
			tmux new-session -d -s nadeko 'curl -L https://github.com/Kwoth/NadekoBot-BashScript/raw/1.4/NadekoARU_Latest.sh | sh'
		fi
	fi
;;
stop)
	# coming soon
;;
restart)
	# coming soon
;;
status)
	# coming soon
;;

exit 0
