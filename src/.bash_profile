# This file is sourced by bash for login shells.

# set PATH so it includes user's private bin if it exists
if [ -d ~/bin ]; then
    PATH=~/bin:"${PATH}":/usr/sbin:/sbin
fi

# The following line runs your .bashrc and is recommended by the bash
# info pages.
[[ -f ~/.bashrc ]] && . ~/.bashrc

#exec screen -R # automatically attach to first detached session if it exists

# print my calendar if I've configured it
# http://bsdcalendar.sourceforge.net/  (Gentoo: app-misc/calendar)
if [ -f ~/.calendar/calendar ]; then
    calendar
fi
