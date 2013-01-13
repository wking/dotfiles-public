# This file is sourced by bash for login shells.

# include system binaries
PATH="${PATH}":/usr/sbin:/sbin

# set PATH so it includes user's local bin if it exists
if [ -d "${HOME}"/.local/bin ]; then
    PATH="${HOME}"/.local/bin:"${PATH}"
fi

# set PATH so it includes user's personal bin if it exists
if [ -d "${HOME}"/bin ]; then
    PATH="${HOME}"/bin:"${PATH}"
fi

# The following line runs your .bashrc and is recommended by the bash
# info pages.
[[ -f ~/.bashrc ]] && . ~/.bashrc

#exec screen -R # automatically attach to first detached session if it exists

# print my calendar if I've configured it
# http://bsdcalendar.sourceforge.net/  (Gentoo: app-misc/calendar)
CALENDAR=$(which calendar 2> /dev/null)
if [ -n "${CALENDAR}" ] && [ -f ~/.calendar/calendar ]; then
    calendar
fi
