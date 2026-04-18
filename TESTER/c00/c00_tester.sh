# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    c00_tester.sh                                      :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nors <nors@student.42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/07/14 18:58:08 by nors              #+#    #+#              #
#    Updated: 2022/07/18 20:02:32 by nors             ###   ########.fr        #
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

printf $YELLOW"_______________  C00  _______________\n"$RESET
printf "\n"

sleep 1
rm -f c00/output/user*

printf $PURPLE"-------------> [TESTING_EX00...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls c00/tester_c00/ex00)
USER_OUTPUT=$(ls c00/user_c00/ex00)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

gcc -Wall -Wextra -Werror c00/tester_c00/ex00/ft_putchar.c c00/main_exec/ex00_main.c -o c00/output/tester_ft_putchar_binary \
				&& c00/output/tester_ft_putchar_binary > c00/output/tester_ft_putchar_output

gcc -Wall -Wextra -Werror c00/user_c00/ex00/ft_putchar.c c00/main_exec/ex00_main.c -o c00/output/user_ft_putchar_binary \
				&& c00/output/user_ft_putchar_binary > c00/output/user_ft_putchar_output

TESTER_OUTPUT=$(cat c00/output/tester_ft_putchar_output)
USER_OUTPUT=$(cat c00/output/user_ft_putchar_output)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX01...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls c00/tester_c00/ex01)
USER_OUTPUT=$(ls c00/user_c00/ex01)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

gcc -Wall -Wextra -Werror c00/tester_c00/ex01/ft_print_alphabet.c c00/main_exec/ex01_main.c -o c00/output/tester_ft_print_alphabet_binary \
				&& c00/output/tester_ft_print_alphabet_binary > c00/output/tester_ft_print_alphabet_output

gcc -Wall -Wextra -Werror c00/user_c00/ex01/ft_print_alphabet.c c00/main_exec/ex01_main.c -o c00/output/user_ft_print_alphabet_binary \
				&& c00/output/user_ft_print_alphabet_binary > c00/output/user_ft_print_alphabet_output

TESTER_OUTPUT=$(cat c00/output/tester_ft_print_alphabet_output)
USER_OUTPUT=$(cat c00/output/user_ft_print_alphabet_output)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX02...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls c00/tester_c00/ex02)
USER_OUTPUT=$(ls c00/user_c00/ex02)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

gcc -Wall -Wextra -Werror c00/tester_c00/ex02/ft_print_reverse_alphabet.c c00/main_exec/ex02_main.c -o c00/output/tester_ft_print_reverse_alphabet_binary \
				&& c00/output/tester_ft_print_reverse_alphabet_binary > c00/output/tester_ft_print_reverse_alphabet_output

gcc -Wall -Wextra -Werror c00/user_c00/ex02/ft_print_reverse_alphabet.c c00/main_exec/ex02_main.c -o c00/output/user_ft_print_reverse_alphabet_binary \
				&& c00/output/user_ft_print_reverse_alphabet_binary > c00/output/user_ft_print_reverse_alphabet_output

TESTER_OUTPUT=$(cat c00/output/tester_ft_print_reverse_alphabet_output)
USER_OUTPUT=$(cat c00/output/user_ft_print_reverse_alphabet_output)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX03...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls c00/tester_c00/ex03)
USER_OUTPUT=$(ls c00/user_c00/ex03)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

gcc -Wall -Wextra -Werror c00/tester_c00/ex03/ft_print_numbers.c c00/main_exec/ex03_main.c -o c00/output/tester_ft_print_numbers_binary \
				&& c00/output/tester_ft_print_numbers_binary > c00/output/tester_ft_print_numbers_output

gcc -Wall -Wextra -Werror c00/user_c00/ex03/ft_print_numbers.c c00/main_exec/ex03_main.c -o c00/output/user_ft_print_numbers_binary \
				&& c00/output/user_ft_print_numbers_binary > c00/output/user_ft_print_numbers_output

TESTER_OUTPUT=$(cat c00/output/tester_ft_print_numbers_output)
USER_OUTPUT=$(cat c00/output/user_ft_print_numbers_output)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX04...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls c00/tester_c00/ex04)
USER_OUTPUT=$(ls c00/user_c00/ex04)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

gcc -Wall -Wextra -Werror c00/tester_c00/ex04/ft_is_negative.c c00/main_exec/ex04_main.c -o c00/output/tester_ft_is_negative_binary \
				&& c00/output/tester_ft_is_negative_binary > c00/output/tester_ft_is_negative_output

gcc -Wall -Wextra -Werror c00/user_c00/ex04/ft_is_negative.c c00/main_exec/ex04_main.c -o c00/output/user_ft_is_negative_binary \
				&& c00/output/user_ft_is_negative_binary > c00/output/user_ft_is_negative_output

TESTER_OUTPUT=$(cat c00/output/tester_ft_is_negative_output)
USER_OUTPUT=$(cat c00/output/user_ft_is_negative_output)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX05...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls c00/tester_c00/ex05)
USER_OUTPUT=$(ls c00/user_c00/ex05)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

gcc -Wall -Wextra -Werror c00/tester_c00/ex05/ft_print_comb.c c00/main_exec/ex05_main.c -o c00/output/tester_ft_print_comb_binary \
				&& c00/output/tester_ft_print_comb_binary > c00/output/tester_ft_print_comb_output

gcc -Wall -Wextra -Werror c00/user_c00/ex05/ft_print_comb.c c00/main_exec/ex05_main.c -o c00/output/user_ft_print_comb_binary \
				&& c00/output/user_ft_print_comb_binary > c00/output/user_ft_print_comb_output

TESTER_OUTPUT=$(cat c00/output/tester_ft_print_comb_output)
USER_OUTPUT=$(cat c00/output/user_ft_print_comb_output)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX06...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls c00/tester_c00/ex06)
USER_OUTPUT=$(ls c00/user_c00/ex06)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

gcc -Wall -Wextra -Werror c00/tester_c00/ex06/ft_print_comb2.c c00/main_exec/ex06_main.c -o c00/output/tester_ft_print_comb2_binary \
				&& c00/output/tester_ft_print_comb2_binary > c00/output/tester_ft_print_comb2_output

gcc -Wall -Wextra -Werror c00/user_c00/ex06/ft_print_comb2.c c00/main_exec/ex06_main.c -o c00/output/user_ft_print_comb2_binary \
				&& c00/output/user_ft_print_comb2_binary > c00/output/user_ft_print_comb2_output

TESTER_OUTPUT=$(cat c00/output/tester_ft_print_comb2_output)
USER_OUTPUT=$(cat c00/output/user_ft_print_comb2_output)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX07...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls c00/tester_c00/ex07)
USER_OUTPUT=$(ls c00/user_c00/ex07)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

gcc -Wall -Wextra -Werror c00/tester_c00/ex07/ft_putnbr.c c00/main_exec/ex07_main.c -o c00/output/tester_ft_putnbr_binary \
				&& c00/output/tester_ft_putnbr_binary > c00/output/tester_ft_putnbr_output

gcc -Wall -Wextra -Werror c00/user_c00/ex07/ft_putnbr.c c00/main_exec/ex07_main.c -o c00/output/user_ft_putnbr_binary \
				&& c00/output/user_ft_putnbr_binary > c00/output/user_ft_putnbr_output

TESTER_OUTPUT=$(cat c00/output/tester_ft_putnbr_output)
USER_OUTPUT=$(cat c00/output/user_ft_putnbr_output)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX08...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls c00/tester_c00/ex08)
USER_OUTPUT=$(ls c00/user_c00/ex08)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

gcc -Wall -Wextra -Werror c00/tester_c00/ex08/ft_print_combn.c c00/main_exec/ex08_main.c -o c00/output/tester_ft_print_combn_binary \
				&& c00/output/tester_ft_print_combn_binary > c00/output/tester_ft_print_combn_output

gcc -Wall -Wextra -Werror c00/user_c00/ex08/ft_print_combn.c c00/main_exec/ex08_main.c -o c00/output/user_ft_print_combn_binary \
				&& c00/output/user_ft_print_combn_binary > c00/output/user_ft_print_combn_output

TESTER_OUTPUT=$(cat c00/output/tester_ft_print_combn_output)
USER_OUTPUT=$(cat c00/output/user_ft_print_combn_output)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

rm -f c00/output/*_binary