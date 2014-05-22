source lib/full_file_path.sh
#------------------------------------------------------
# scandir 
# 
# Move through a directory recursively.
#-----------------------------------------------------#
BINDIR=$(dirname $(readlink -f $0))
LEVEL=0				# Initial level
MAX_LEVEL=20		# Max level of 20

# Scans regardless of order...
scandir() {
	for UNIX_FILE in $(ls --group-directories-first "$1")
	do
		if (( $LEVEL < $MAX_LEVEL ))
		then
			UNIX_FILE="$1/$UNIX_FILE"

			# Directory 
			if [ -d "$UNIX_FILE" ]
			then
				echo "$UNIX_FILE is a directory."
				LEVEL=$(( $LEVEL + 1 ))
				scandir "$UNIX_FILE"

			# Link
			elif [ -L "$UNIX_FILE" ]
			then
				echo "$UNIX_FILE is a symbolic link."

			# Regular File
			elif [ -f "$UNIX_FILE" ]
			then
				echo "$UNIX_FILE is a file."

			# Device files, and other ridiculous shit...
			else
				echo "$UNIX_FILE is neither a regular file nor a directory."
			fi
		else
			printf "Descending too deep.  Cannot eat system memory.\n" > /dev/stderr
			exit 1
		fi
	done
}

FULLPATH="`get_fullpath tests`"
scandir "$BINDIR/tests"
