# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    c02_tester.sh                                      :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nors <nors@student.42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/07/16 13:27:19 by nors              #+#    #+#              #
#    Updated: 2022/07/19 23:58:06 by nors             ###   ########.fr        #
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

printf $YELLOW"_______________  C02  _______________\n"$RESET
printf "\n"

sleep 1
rm -f c02/output/user*

printf $PURPLE"-------------> [TESTING_EX00...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls c02/tester_c02/ex00)
USER_OUTPUT=$(ls c02/user_c02/ex00)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

gcc -Wall -Wextra -Werror c02/tester_c02/ex00/ft_strcpy.c c02/main_exec/ex00_main.c -o c02/output/tester_ft_strcpy_binary \
				&& c02/output/tester_ft_strcpy_binary > c02/output/tester_ft_strcpy_output

gcc -Wall -Wextra -Werror c02/user_c02/ex00/ft_strcpy.c c02/main_exec/ex00_main.c -o c02/output/user_ft_strcpy_binary \
				&& c02/output/user_ft_strcpy_binary > c02/output/user_ft_strcpy_output

TESTER_OUTPUT=$(cat c02/output/tester_ft_strcpy_output)
USER_OUTPUT=$(cat c02/output/user_ft_strcpy_output)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX01...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls c02/tester_c02/ex01)
USER_OUTPUT=$(ls c02/user_c02/ex01)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

gcc -Wall -Wextra -Werror c02/tester_c02/ex01/ft_strncpy.c c02/main_exec/ex01_main.c -o c02/output/tester_ft_strncpy_binary \
				&& c02/output/tester_ft_strncpy_binary > c02/output/tester_ft_strncpy_output

gcc -Wall -Wextra -Werror c02/user_c02/ex01/ft_strncpy.c c02/main_exec/ex01_main.c -o c02/output/user_ft_strncpy_binary \
				&& c02/output/user_ft_strncpy_binary > c02/output/user_ft_strncpy_output

TESTER_OUTPUT=$(cat c02/output/tester_ft_strncpy_output)
USER_OUTPUT=$(cat c02/output/user_ft_strncpy_output)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX02...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls c02/tester_c02/ex02)
USER_OUTPUT=$(ls c02/user_c02/ex02)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

gcc -Wall -Wextra -Werror c02/tester_c02/ex02/ft_str_is_alpha.c c02/main_exec/ex02_main.c -o c02/output/tester_ft_str_is_alpha_binary \
				&& c02/output/tester_ft_str_is_alpha_binary > c02/output/tester_ft_str_is_alpha_output

gcc -Wall -Wextra -Werror c02/user_c02/ex02/ft_str_is_alpha.c c02/main_exec/ex02_main.c -o c02/output/user_ft_str_is_alpha_binary \
				&& c02/output/user_ft_str_is_alpha_binary > c02/output/user_ft_str_is_alpha_output

TESTER_OUTPUT=$(cat c02/output/tester_ft_str_is_alpha_output)
USER_OUTPUT=$(cat c02/output/user_ft_str_is_alpha_output)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX03...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls c02/tester_c02/ex03)
USER_OUTPUT=$(ls c02/user_c02/ex03)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

gcc -Wall -Wextra -Werror c02/tester_c02/ex03/ft_str_is_numeric.c c02/main_exec/ex03_main.c -o c02/output/tester_ft_str_is_numeric_binary \
				&& c02/output/tester_ft_str_is_numeric_binary > c02/output/tester_ft_str_is_numeric_output

gcc -Wall -Wextra -Werror c02/user_c02/ex03/ft_str_is_numeric.c c02/main_exec/ex03_main.c -o c02/output/user_ft_str_is_numeric_binary \
				&& c02/output/user_ft_str_is_numeric_binary > c02/output/user_ft_str_is_numeric_output

TESTER_OUTPUT=$(cat c02/output/tester_ft_str_is_numeric_output)
USER_OUTPUT=$(cat c02/output/user_ft_str_is_numeric_output)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX04...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls c02/tester_c02/ex04)
USER_OUTPUT=$(ls c02/user_c02/ex04)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

gcc -Wall -Wextra -Werror c02/tester_c02/ex04/ft_str_is_lowercase.c c02/main_exec/ex04_main.c -o c02/output/tester_ft_str_is_lowercase_binary \
				&& c02/output/tester_ft_str_is_lowercase_binary > c02/output/tester_ft_str_is_lowercase_output

gcc -Wall -Wextra -Werror c02/user_c02/ex04/ft_str_is_lowercase.c c02/main_exec/ex04_main.c -o c02/output/user_ft_str_is_lowercase_binary \
				&& c02/output/user_ft_str_is_lowercase_binary > c02/output/user_ft_str_is_lowercase_output

TESTER_OUTPUT=$(cat c02/output/tester_ft_str_is_lowercase_output)
USER_OUTPUT=$(cat c02/output/user_ft_str_is_lowercase_output)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX05...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls c02/tester_c02/ex05)
USER_OUTPUT=$(ls c02/user_c02/ex05)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

gcc -Wall -Wextra -Werror c02/tester_c02/ex05/ft_str_is_uppercase.c c02/main_exec/ex05_main.c -o c02/output/tester_ft_str_is_uppercase_binary \
				&& c02/output/tester_ft_str_is_uppercase_binary > c02/output/tester_ft_str_is_uppercase_output

gcc -Wall -Wextra -Werror c02/user_c02/ex05/ft_str_is_uppercase.c c02/main_exec/ex05_main.c -o c02/output/user_ft_str_is_uppercase_binary \
				&& c02/output/user_ft_str_is_uppercase_binary > c02/output/user_ft_str_is_uppercase_output

TESTER_OUTPUT=$(cat c02/output/tester_ft_str_is_uppercase_output)
USER_OUTPUT=$(cat c02/output/user_ft_str_is_uppercase_output)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX06...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls c02/tester_c02/ex06)
USER_OUTPUT=$(ls c02/user_c02/ex06)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

gcc -Wall -Wextra -Werror c02/tester_c02/ex06/ft_str_is_printable.c c02/main_exec/ex06_main.c -o c02/output/tester_ft_str_is_printable_binary \
				&& c02/output/tester_ft_str_is_printable_binary > c02/output/tester_ft_str_is_printable_output

gcc -Wall -Wextra -Werror c02/user_c02/ex06/ft_str_is_printable.c c02/main_exec/ex06_main.c -o c02/output/user_ft_str_is_printable_binary \
				&& c02/output/user_ft_str_is_printable_binary > c02/output/user_ft_str_is_printable_output

TESTER_OUTPUT=$(cat c02/output/tester_ft_str_is_printable_output)
USER_OUTPUT=$(cat c02/output/user_ft_str_is_printable_output)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX07...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls c02/tester_c02/ex07)
USER_OUTPUT=$(ls c02/user_c02/ex07)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

gcc -Wall -Wextra -Werror c02/tester_c02/ex07/ft_strupcase.c c02/main_exec/ex07_main.c -o c02/output/tester_ft_strupcase_binary \
				&& c02/output/tester_ft_strupcase_binary > c02/output/tester_ft_strupcase_output

gcc -Wall -Wextra -Werror c02/user_c02/ex07/ft_strupcase.c c02/main_exec/ex07_main.c -o c02/output/user_ft_strupcase_binary \
				&& c02/output/user_ft_strupcase_binary > c02/output/user_ft_strupcase_output

TESTER_OUTPUT=$(cat c02/output/tester_ft_strupcase_output)
USER_OUTPUT=$(cat c02/output/user_ft_strupcase_output)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX08...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls c02/tester_c02/ex08)
USER_OUTPUT=$(ls c02/user_c02/ex08)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

gcc -Wall -Wextra -Werror c02/tester_c02/ex08/ft_strlowcase.c c02/main_exec/ex08_main.c -o c02/output/tester_ft_strlowcase_binary \
				&& c02/output/tester_ft_strlowcase_binary > c02/output/tester_ft_strlowcase_output

gcc -Wall -Wextra -Werror c02/user_c02/ex08/ft_strlowcase.c c02/main_exec/ex08_main.c -o c02/output/user_ft_strlowcase_binary \
				&& c02/output/user_ft_strlowcase_binary > c02/output/user_ft_strlowcase_output

TESTER_OUTPUT=$(cat c02/output/tester_ft_strlowcase_output)
USER_OUTPUT=$(cat c02/output/user_ft_strlowcase_output)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX09...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls c02/tester_c02/ex09)
USER_OUTPUT=$(ls c02/user_c02/ex09)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

gcc -Wall -Wextra -Werror c02/tester_c02/ex09/ft_strcapitalize.c c02/main_exec/ex09_main.c -o c02/output/tester_ft_strcapitalize_binary \
				&& c02/output/tester_ft_strcapitalize_binary > c02/output/tester_ft_strcapitalize_output

gcc -Wall -Wextra -Werror c02/user_c02/ex09/ft_strcapitalize.c c02/main_exec/ex09_main.c -o c02/output/user_ft_strcapitalize_binary \
				&& c02/output/user_ft_strcapitalize_binary > c02/output/user_ft_strcapitalize_output

TESTER_OUTPUT=$(cat c02/output/tester_ft_strcapitalize_output)
USER_OUTPUT=$(cat c02/output/user_ft_strcapitalize_output)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX10...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls c02/tester_c02/ex10)
USER_OUTPUT=$(ls c02/user_c02/ex10)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

gcc -Wall -Wextra -Werror c02/tester_c02/ex10/ft_strlcpy.c c02/main_exec/ex10_main.c -o c02/output/tester_ft_strlcpy_binary \
				&& c02/output/tester_ft_strlcpy_binary > c02/output/tester_ft_strlcpy_output

gcc -Wall -Wextra -Werror c02/user_c02/ex10/ft_strlcpy.c c02/main_exec/ex10_main.c -o c02/output/user_ft_strlcpy_binary \
				&& c02/output/user_ft_strlcpy_binary > c02/output/user_ft_strlcpy_output

TESTER_OUTPUT=$(cat c02/output/tester_ft_strlcpy_output)
USER_OUTPUT=$(cat c02/output/user_ft_strlcpy_output)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX11...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls c02/tester_c02/ex11)
USER_OUTPUT=$(ls c02/user_c02/ex11)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

gcc -Wall -Wextra -Werror c02/tester_c02/ex11/ft_putstr_non_printable.c c02/main_exec/ex11_main.c -o c02/output/tester_ft_putstr_non_printable_binary \
				&& c02/output/tester_ft_putstr_non_printable_binary > c02/output/tester_ft_putstr_non_printable_output

gcc -Wall -Wextra -Werror c02/user_c02/ex11/ft_putstr_non_printable.c c02/main_exec/ex11_main.c -o c02/output/user_ft_putstr_non_printable_binary \
				&& c02/output/user_ft_putstr_non_printable_binary > c02/output/user_ft_putstr_non_printable_output

TESTER_OUTPUT=$(cat c02/output/tester_ft_putstr_non_printable_output)
USER_OUTPUT=$(cat c02/output/user_ft_putstr_non_printable_output)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX12...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls c02/tester_c02/ex12)
USER_OUTPUT=$(ls c02/user_c02/ex12)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

gcc -Wall -Wextra -Werror c02/tester_c02/ex12/ft_print_memory.c c02/main_exec/ex12_main.c -o c02/output/tester_ft_print_memory_binary \
				&& c02/output/tester_ft_print_memory_binary > c02/output/tester_ft_print_memory_output

gcc -Wall -Wextra -Werror c02/user_c02/ex12/ft_print_memory.c c02/main_exec/ex12_main.c -o c02/output/user_ft_print_memory_binary \
				&& c02/output/user_ft_print_memory_binary > c02/output/user_ft_print_memory_output

TESTER_OUTPUT=$(cat c02/output/tester_ft_print_memory_output | cut -d ':' -f2)
USER_OUTPUT=$(cat c02/output/user_ft_print_memory_output  | cut -d ':' -f2)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

rm -f c02/output/*_binary