#!/usr/bin/env bash
# <program description>


if [ ! "$BASH_VERSION" ] ; then
	exec /bin/bash "$0" "$@"
fi


# ==== Global Variables ===
BASEDIR="$(dirname "$(readlink -f "$0")")"
FUNCDIR=$BASEDIR/functions
SUBDIR1="$FUNCDIR"/<subdir1-name>
SUBDIR2="$FUNCDIR"/<subdir2-name>
LOGDIR=$BASEDIR/Logs
DATETIME=$(date +%m_%d_%Y_%H%M)
mkdir $LOGDIR/$DATETIME
LOGSDIR=$LOGDIR/$DATETIME
LOG=$LOGSDIR/Install_verbose.log
SHORTLOG=$LOGSDIR/Install.log
ERRLOG=$LOGSDIR/Install_error.log
FAILLOG=$LOGSDIR/Install_failed.log


# Load functions (Order does not matter)
for func in "$"/*.sh; do
	[ -e "$func" ] || break
	. "$func"
done
for func in "$FUNCDIR"/*.sh; do
	[ -e "$func" ] || break
	. "$func"
done
for func in "$SUBDIR1"/*.sh; do
	[ -e "$func" ] || break
	. "$func"
done
for func in "$SUBDIR2"/*.sh; do
  [ -e "$func" ] || break
	. "$func"
done


#Clear screen for better user experience
clear
# Ensure script is being run as root.
# Corresponding file should be located in FUNCDIR
rootck


# === SUBDIR1 functions ===
# Calls a series of functions from SUBDIR1 that will execute commands in the following order
function1.1
function1.2

# === SUBDIR2 functions ===
# Calls a series of functions from SUBDIR2 that will execute commands in the following orderCalls a series of functions from SUBDIR1 that will execute commands in the following order
function2.1
function2.2
