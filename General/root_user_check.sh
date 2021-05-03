rootck () {
	echo "- $(date +%D-%H:%M:%S) - Starting user check" | tee -a "$LOG" 2>> "$ERRLOG"
	echo "- $(date +%D-%H:%M:%S) -  Verifying that this script is being run as the root user" | tee -a "$LOG" 2>> "$ERRLOG"
	echo "- $(date +%D-%H:%M:%S) -  ### Script will exit if it's not being run as root ###" | tee -a "$LOG" 2>> "$ERRLOG"
	if [ "$(id -u)" = 0 ]; then
		echo "- $(date +%D-%H:%M:%S) - User is root - continuing..." | tee -a "$LOG" 2>> "$ERRLOG"
	else
		exit 1
	fi
	echo "- $(date +%D-%H:%M:%S) - root user verification successful" | tee -a "$LOG" 2>> "$ERRLOG"
}
# End of Root user check
