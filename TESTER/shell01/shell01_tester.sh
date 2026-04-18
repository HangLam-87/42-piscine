# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    shell01_tester.sh                                  :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nors <nors@student.42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/07/14 10:23:28 by nors              #+#    #+#              #
#    Updated: 2022/07/18 20:05:21 by nors             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/usr/bin/bash

GREEN="\033[38;2;57;181;74m"
RED="\033[38;2;222;56;43m"
BLUE="\033[38;2;34;183;235m"
YELLOW="\033[38;2;255;176;0m"
PURPLE="\033[38;2;255;105;180m"
WHITE="\033[1;37m"
RESET="\033[0m"

printf $YELLOW"_______________  SHELL01  _______________\n"$RESET
printf "\n"

sleep 1
rm -f shell01/output/user*

printf $PURPLE"-------------> [TESTING_EX01...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls shell01/tester_shell01/ex01)
USER_OUTPUT=$(ls shell01/user_shell01/ex01)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

export FT_USER=$USER

TESTER_OUTPUT=$(bash shell01/tester_shell01/ex01/print_groups.sh)
USER_OUTPUT=$(bash shell01/user_shell01/ex01/print_groups.sh)

unset FT_USER

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX02...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls shell01/tester_shell01/ex02)
USER_OUTPUT=$(ls shell01/user_shell01/ex02)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

TESTER_OUTPUT=$(bash shell01/tester_shell01/ex02/find_sh.sh | cat -e)
USER_OUTPUT=$(bash shell01/user_shell01/ex02/find_sh.sh | cat -e)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX03...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls shell01/tester_shell01/ex03)
USER_OUTPUT=$(ls shell01/user_shell01/ex03)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

TESTER_OUTPUT=$(bash shell01/tester_shell01/ex03/count_files.sh | cat -e)
USER_OUTPUT=$(bash shell01/user_shell01/ex03/count_files.sh | cat -e)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX04...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls shell01/tester_shell01/ex04)
USER_OUTPUT=$(ls shell01/user_shell01/ex04)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

TESTER_OUTPUT=$(bash shell01/tester_shell01/ex04/MAC.sh | cat -e)
USER_OUTPUT=$(bash shell01/user_shell01/ex04/MAC.sh | cat -e)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX05...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls shell01/tester_shell01/ex05)
USER_OUTPUT=$(ls shell01/user_shell01/ex05)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

TESTER_OUTPUT=$(ls -lRa shell01/tester_shell01/ex05/ | awk 'NR>4{printf("%s", $9)}')
USER_OUTPUT=$(ls -lRa shell01/user_shell01/ex05/ | awk 'NR>4{printf("%s", $9)}')

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Filename [OK]\n"$RESET
else
	printf $RED"--> Expected Filename [KO]\n"$RESET
fi
printf "\n"

TESTER_OUTPUT=$(cat shell01/tester_shell01/ex05/*MaRV*)
USER_OUTPUT=$(cat shell01/user_shell01/ex05/*MaRV*)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Content [OK]\n"$RESET
else
	printf $RED"--> Expected Content [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX06...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls shell01/tester_shell01/ex06)
USER_OUTPUT=$(ls shell01/user_shell01/ex06)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

CURRENT_PWD=$(pwd)

TESTER_OUTPUT=$(cd /etc && bash $CURRENT_PWD/shell01/tester_shell01/ex06/skip.sh)
USER_OUTPUT=$(cd /etc && bash $CURRENT_PWD/shell01/user_shell01/ex06/skip.sh)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX07...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls shell01/tester_shell01/ex07)
USER_OUTPUT=$(ls shell01/user_shell01/ex07)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

TESTER_OUTPUT=$(bash shell01/tester_shell01/ex07/r_dwssap.sh)
USER_OUTPUT=$(bash shell01/user_shell01/ex07/r_dwssap.sh)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX08...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls shell01/tester_shell01/ex08)
USER_OUTPUT=$(ls shell01/user_shell01/ex08)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

export FT_NBR1=\\\'\?\"\\\"\'\\
export FT_NBR2=rcrdmddd

TESTER_OUTPUT=$(bash shell01/tester_shell01/ex08/add_chelou.sh)
USER_OUTPUT=$(bash shell01/user_shell01/ex08/add_chelou.sh)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [salut] [OK]\n"$RESET
else
	printf $RED"--> Expected Output [salut] [KO]\n"$RESET
fi
printf "\n"

FT_NBR1=\\\"\\\"\!\\\"\\\"\!\\\"\\\"\!\\\"\\\"\!\\\"\\\"\!\\\"\\\"
FT_NBR2=dcrcmcmooododmrrrmorcmcrmomo

TESTER_OUTPUT=$(bash shell01/tester_shell01/ex08/add_chelou.sh)
USER_OUTPUT=$(bash shell01/user_shell01/ex08/add_chelou.sh)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [segmentation fault] [OK]\n"$RESET
else
	printf $RED"--> Expected Output [segmentation fault] [KO]\n"$RESET
fi
printf "\n"