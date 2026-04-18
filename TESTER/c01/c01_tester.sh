# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    c01_tester.sh                                      :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nors <nors@student.42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/07/16 13:27:19 by nors              #+#    #+#              #
#    Updated: 2022/07/18 20:04:21 by nors             ###   ########.fr        #
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

printf $YELLOW"_______________  C01  _______________\n"$RESET
printf "\n"

sleep 1
rm -f c01/output/user*

printf $PURPLE"-------------> [TESTING_EX00...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls c01/tester_c01/ex00)
USER_OUTPUT=$(ls c01/user_c01/ex00)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

gcc -Wall -Wextra -Werror c01/tester_c01/ex00/ft_ft.c c01/main_exec/ex00_main.c -o c01/output/tester_ft_ft_binary \
				&& c01/output/tester_ft_ft_binary > c01/output/tester_ft_ft_output

gcc -Wall -Wextra -Werror c01/user_c01/ex00/ft_ft.c c01/main_exec/ex00_main.c -o c01/output/user_ft_ft_binary \
				&& c01/output/user_ft_ft_binary > c01/output/user_ft_ft_output

TESTER_OUTPUT=$(cat c01/output/tester_ft_ft_output)
USER_OUTPUT=$(cat c01/output/user_ft_ft_output)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX01...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls c01/tester_c01/ex01)
USER_OUTPUT=$(ls c01/user_c01/ex01)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

gcc -Wall -Wextra -Werror c01/tester_c01/ex01/ft_ultimate_ft.c c01/main_exec/ex01_main.c -o c01/output/tester_ft_ultimate_ft_binary \
				&& c01/output/tester_ft_ultimate_ft_binary > c01/output/tester_ft_ultimate_ft_output

gcc -Wall -Wextra -Werror c01/user_c01/ex01/ft_ultimate_ft.c c01/main_exec/ex01_main.c -o c01/output/user_ft_ultimate_ft_binary \
				&& c01/output/user_ft_ultimate_ft_binary > c01/output/user_ft_ultimate_ft_output

TESTER_OUTPUT=$(cat c01/output/tester_ft_ultimate_ft_output)
USER_OUTPUT=$(cat c01/output/user_ft_ultimate_ft_output)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX02...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls c01/tester_c01/ex02)
USER_OUTPUT=$(ls c01/user_c01/ex02)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

gcc -Wall -Wextra -Werror c01/tester_c01/ex02/ft_swap.c c01/main_exec/ex02_main.c -o c01/output/tester_ft_swap_binary \
				&& c01/output/tester_ft_swap_binary > c01/output/tester_ft_swap_output

gcc -Wall -Wextra -Werror c01/user_c01/ex02/ft_swap.c c01/main_exec/ex02_main.c -o c01/output/user_ft_swap_binary \
				&& c01/output/user_ft_swap_binary > c01/output/user_ft_swap_output

TESTER_OUTPUT=$(cat c01/output/tester_ft_swap_output)
USER_OUTPUT=$(cat c01/output/user_ft_swap_output)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX03...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls c01/tester_c01/ex03)
USER_OUTPUT=$(ls c01/user_c01/ex03)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

gcc -Wall -Wextra -Werror c01/tester_c01/ex03/ft_div_mod.c c01/main_exec/ex03_main.c -o c01/output/tester_ft_div_mod_binary \
				&& c01/output/tester_ft_div_mod_binary > c01/output/tester_ft_div_mod_output

gcc -Wall -Wextra -Werror c01/user_c01/ex03/ft_div_mod.c c01/main_exec/ex03_main.c -o c01/output/user_ft_div_mod_binary \
				&& c01/output/user_ft_div_mod_binary > c01/output/user_ft_div_mod_output

TESTER_OUTPUT=$(cat c01/output/tester_ft_div_mod_output)
USER_OUTPUT=$(cat c01/output/user_ft_div_mod_output)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX04...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls c01/tester_c01/ex04)
USER_OUTPUT=$(ls c01/user_c01/ex04)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

gcc -Wall -Wextra -Werror c01/tester_c01/ex04/ft_ultimate_div_mod.c c01/main_exec/ex04_main.c -o c01/output/tester_ft_ultimate_div_mod_binary \
				&& c01/output/tester_ft_ultimate_div_mod_binary > c01/output/tester_ft_ultimate_div_mod_output

gcc -Wall -Wextra -Werror c01/user_c01/ex04/ft_ultimate_div_mod.c c01/main_exec/ex04_main.c -o c01/output/user_ft_ultimate_div_mod_binary \
				&& c01/output/user_ft_ultimate_div_mod_binary > c01/output/user_ft_ultimate_div_mod_output

TESTER_OUTPUT=$(cat c01/output/tester_ft_ultimate_div_mod_output)
USER_OUTPUT=$(cat c01/output/user_ft_ultimate_div_mod_output)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX05...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls c01/tester_c01/ex05)
USER_OUTPUT=$(ls c01/user_c01/ex05)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

gcc -Wall -Wextra -Werror c01/tester_c01/ex05/ft_putstr.c c01/main_exec/ex05_main.c -o c01/output/tester_ft_putstr_binary \
				&& c01/output/tester_ft_putstr_binary > c01/output/tester_ft_putstr_output

gcc -Wall -Wextra -Werror c01/user_c01/ex05/ft_putstr.c c01/main_exec/ex05_main.c -o c01/output/user_ft_putstr_binary \
				&& c01/output/user_ft_putstr_binary > c01/output/user_ft_putstr_output

TESTER_OUTPUT=$(cat c01/output/tester_ft_putstr_output)
USER_OUTPUT=$(cat c01/output/user_ft_putstr_output)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX06...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls c01/tester_c01/ex06)
USER_OUTPUT=$(ls c01/user_c01/ex06)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

gcc -Wall -Wextra -Werror c01/tester_c01/ex06/ft_strlen.c c01/main_exec/ex06_main.c -o c01/output/tester_ft_strlen_binary \
				&& c01/output/tester_ft_strlen_binary > c01/output/tester_ft_strlen_output

gcc -Wall -Wextra -Werror c01/user_c01/ex06/ft_strlen.c c01/main_exec/ex06_main.c -o c01/output/user_ft_strlen_binary \
				&& c01/output/user_ft_strlen_binary > c01/output/user_ft_strlen_output

TESTER_OUTPUT=$(cat c01/output/tester_ft_strlen_output)
USER_OUTPUT=$(cat c01/output/user_ft_strlen_output)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX07...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls c01/tester_c01/ex07)
USER_OUTPUT=$(ls c01/user_c01/ex07)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

gcc -Wall -Wextra -Werror c01/tester_c01/ex07/ft_rev_int_tab.c c01/main_exec/ex07_main.c -o c01/output/tester_ft_rev_int_tab_binary \
				&& c01/output/tester_ft_rev_int_tab_binary > c01/output/tester_ft_rev_int_tab_output

gcc -Wall -Wextra -Werror c01/user_c01/ex07/ft_rev_int_tab.c c01/main_exec/ex07_main.c -o c01/output/user_ft_rev_int_tab_binary \
				&& c01/output/user_ft_rev_int_tab_binary > c01/output/user_ft_rev_int_tab_output

TESTER_OUTPUT=$(cat c01/output/tester_ft_rev_int_tab_output)
USER_OUTPUT=$(cat c01/output/user_ft_rev_int_tab_output)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX08...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls c01/tester_c01/ex08)
USER_OUTPUT=$(ls c01/user_c01/ex08)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

gcc -Wall -Wextra -Werror c01/tester_c01/ex08/ft_sort_int_tab.c c01/main_exec/ex08_main.c -o c01/output/tester_ft_sort_int_tab_binary \
				&& c01/output/tester_ft_sort_int_tab_binary > c01/output/tester_ft_sort_int_tab_output

gcc -Wall -Wextra -Werror c01/user_c01/ex08/ft_sort_int_tab.c c01/main_exec/ex08_main.c -o c01/output/user_ft_sort_int_tab_binary \
				&& c01/output/user_ft_sort_int_tab_binary > c01/output/user_ft_sort_int_tab_output

TESTER_OUTPUT=$(cat c01/output/tester_ft_sort_int_tab_output)
USER_OUTPUT=$(cat c01/output/user_ft_sort_int_tab_output)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

rm -f c01/output/*_binary