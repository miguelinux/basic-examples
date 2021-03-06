#!/bin/bash

# [$#] var contains the number of arguments
# that has been received
if (( $# > 0 ));
then

	# [$@] var contains all arguments
	# written bv the user as parameters
	echo "Arguments received: $#"
	for ARG in $@
	do
		echo "Argument: $ARG"
	done

	# [$*] var contains all argumets
	# The difference between $@ and $* is:
	# [$@] is equivalent: "$1" "$2" "$3" ...
	# [$*] is equivalent: "$1 $2 $3"
	echo "The argument received were: $*"
	echo "The first argument was: $1"

	# [$!] var contains the PID (process
	# identifier) of the most recently command
	# executed in background in this bash session.
	uname -r &
	echo "PID of last bg command: $!"

	# [$$] var contains the PID (process
	# identifier) of the most recently command
	# executed in this bash session.
	uname -a
	echo "PID of last command: $$"

	# [$?] var contains the exit status of the most
	# recently executed foreground pipeline.
	uname -s
	echo "Exit code $?"

else
	echo "No arguments"
fi

exit 0
