# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen!

# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# If not running interactively, don't do anything else
[ -z "$PS1" ] && return

# don't put duplicate line in the history and ignore lines starting
# with a space.  See bash(1).
export HISTCONTROL=ignoreboth

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

for FILE in ~/.bashrc.d/*; do
	if [ -f "${FILE}" ]; then
		source "${FILE}"
	fi
done

# reduce environment pollution
unset FILE
