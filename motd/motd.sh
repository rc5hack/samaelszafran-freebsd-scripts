#!/usr/bin/env bash
#
# based on freebsdmotd v 0.61 by Jakub 'samu' Szafranski
#
# Licence: Creative Commons Attribution-ShareAlike 3.0 Unported
# http://creativecommons.org/licenses/by-sa/3.0/
#
# MOTD for FreeBSD
#

processes=( $(ps x -o pid) )
allprocesses=( $(ps aux -o pid) )
CURPROCS=$(( ${#processes[@]}-3 ))
CURALLPROCS=$(( ${#allprocesses[@]}-3 ))
CURQUOTA=`quota -vh |grep -i "/home" |head -n 1 |awk '{print $2}'`;
MAXQUOTA=`quota -vh |grep -i "/home" |head -n 1 |awk '{print $3}'`;
if [ -z "$CURPROCS" ]
then
    CURPROCS="?"
fi
if [ -z "$CURALLPROCS" ]
then
    CURALLPROCS="?"
fi
if [ -z "$CURQUOTA" ]
then
    CURQUOTA="?"
fi
if [ -z "$MAXQUOTA" ]
then
    MAXQUOTA="?"
fi
echo -e " ";
echo -e "               \033[1;31m,\033[0;0m        \033[1;31m,\033[0;0m                  \033[1;31mWelcome to `/bin/hostname`!\033[0;0m"
echo -e "              \033[1;31m/(\033[0;0m        \033[1;31m)\`\033[0;0m"
echo -e "              \033[1;31m\ \___\033[0;0m   \033[1;31m/ |\033[0;0m         \033[2;31m=\033[0;0m\033[0;37m[\033[0;0m     \033[1;1m Date:\033[0;0m \033[0;37m`date`\033[0;0m"
echo -e "              \033[1;31m/  \033[0;0m_\033[1;31m  \`-/  '\033[0;0m"
echo -e "             \033[1;31m(\033[0;0m/\/ \ \033[1;31m\   /\\033[0;0m          \033[2;31m=\033[0;0m\033[0;37m[\033[0;0m    \033[1;1m Login:\033[0;0m \033[0;37m`whoami`\033[0;0m"
echo -e "             / /   | \033[1;31m\`    \\033[0;0m         \033[2;31m=\033[0;0m\033[0;37m[\033[0;0m \033[1;1mProcesses: \033[0;0m\033[0;37m${CURALLPROCS} (${CURPROCS}) / `ulimit -u`\033[0;0m"
echo -e "             \033[1;2mO\033[0;0m \033[0;0m\033[1;2mO\033[0;0m   )\033[1;31m /    |\033[0;0m        \033[2;31m=\033[0;0m\033[0;37m[\033[0;0m    \033[1;1m Quota:\033[0;0m \033[0;37m${CURQUOTA} / ${MAXQUOTA}\033[0;0m"
echo -e "             \`-^--'\033[1;31m\`<     '\033[0;0m"
echo -e "            \033[1;31m(_.)  _  )   /\033[0;0m         \033[2;31m=\033[0;0m\033[0;37m[\033[0;0m \033[0;0mWelcome to FreeBSD and have fun!"
echo -e "             \033[1;31m\`.___/\`    /\033[0;0m\033[0;0m"
echo -e "               \033[1;31m\`-----' /\033[0;0m"
echo -e "  \033[1;31m<----.\033[0;0m     \033[1;31m__ / __   \\033[0;0m"
echo -e "  \033[1;31m<----|====\033[0;0m\033[1;31mO)))\033[0;0m\033[1;31m==\033[0;0m\033[1;31m) \) /\033[0;0m\033[1;31m====\033[0;0m"
echo -e "  \033[1;31m<----'\033[0;0m    \033[1;31m\`--' \`.__,' \\033[0;0m"
echo -e "               \033[1;31m|        |\033[0;0m"
echo -e "                \033[1;31m\       /       /\ \033[0;0m"
echo -e "           \033[1;2m______\033[0;0m\033[1;31m( (\033[0;0m\033[1;2m_\033[0;0m  \033[1;31m/ \______/\033[0;0m"
echo -e "         \033[1;2m,'  ,-----'   |\033[0;0m"
echo -e "         \033[1;2m\`--{__________)\033[0;0m"
echo -e " "
