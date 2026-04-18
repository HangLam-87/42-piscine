# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    shell00_tester.sh                                  :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nors <nors@student.42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/07/13 14:05:03 by nors              #+#    #+#              #
#    Updated: 2022/07/19 12:14:53 by nors             ###   ########.fr        #
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

printf $YELLOW"_______________  SHELL00  _______________\n"$RESET
printf "\n"

sleep 1
rm -f shell00/output/user*

printf $PURPLE"-------------> [TESTING_EX00...] <-------------\n"$RESET
printf "\n"

ls shell00/tester_shell00/ex00 > shell00/output/tester_shell00_ex00_expected_files
ls shell00/user_shell00/ex00 > shell00/output/user_shell00_ex00_expected_files

< shell00/output/tester_shell00_ex00_expected_files read TESTER_OUTPUT
< shell00/output/user_shell00_ex00_expected_files read USER_OUTPUT

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

cat shell00/tester_shell00/ex00/z > shell00/output/tester_shell00_ex00_content
cat shell00/user_shell00/ex00/z > shell00/output/user_shell00_ex00_content

TESTER_OUTPUT="shell00/output/tester_shell00_ex00_content"
USER_OUTPUT="shell00/output/user_shell00_ex00_content"

if cmp -s $TESTER_OUTPUT $USER_OUTPUT; then
	printf $GREEN"--> File Content [OK]\n"$RESET
else
	printf $RED"--> File Content [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX01...] <-------------\n"$RESET
printf "\n"

tar -xf shell00/tester_shell00/ex01/testShell00.tar -C shell00/tester_shell00/ex01 &> /dev/null
tar -xf shell00/user_shell00/ex01/testShell00.tar -C shell00/user_shell00/ex01 &> /dev/null

ls shell00/tester_shell00/ex01 > shell00/output/tester_shell00_ex01_expected_files
ls shell00/user_shell00/ex01 > shell00/output/user_shell00_ex01_expected_files

< shell00/output/tester_shell00_ex01_expected_files read TESTER_OUTPUT
< shell00/output/user_shell00_ex01_expected_files read USER_OUTPUT

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

TESTER_OUTPUT=$(ls -l shell00/tester_shell00/ex01/testShell00 | awk '{printf("%s\n", $1)}')
USER_OUTPUT=$(ls -l shell00/user_shell00/ex01/testShell00 | awk '{printf("%s\n", $1)}')

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> File Permissions [OK]\n"$RESET
else
	printf $RED"--> File Permissions [KO]\n"$RESET
fi
printf "\n"

TESTER_OUTPUT=$(ls -l shell00/tester_shell00/ex01/testShell00 | awk '{printf("%s\n", $5)}')
USER_OUTPUT=$(ls -l shell00/user_shell00/ex01/testShell00 | awk '{printf("%s\n", $5)}')

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> File Size [OK]\n"$RESET
else
	printf $RED"--> File Size [KO]\n"$RESET
fi
printf "\n"

TESTER_OUTPUT=$(ls -l shell00/tester_shell00/ex01/testShell00 | awk '{printf("%s %s %s\n", $6, $7, $8)}')
USER_OUTPUT=$(ls -l shell00/user_shell00/ex01/testShell00 | awk '{printf("%s %s %s\n", $6, $7, $8)}')

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> File Date [OK]\n"$RESET
else
	printf $RED"--> File Date [KO]\n"$RESET
fi
printf "\n"

rm -f shell00/tester_shell00/ex01/testShell00
rm -f shell00/user_shell00/ex01/testShell00

printf $PURPLE"-------------> [TESTING_EX02...] <-------------\n"$RESET
printf "\n"

tar -xf shell00/tester_shell00/ex02/exo2.tar -C shell00/tester_shell00/ex02 &> /dev/null
tar -xf shell00/user_shell00/ex02/exo2.tar -C shell00/user_shell00/ex02 &> /dev/null

ls shell00/tester_shell00/ex02 > shell00/output/tester_shell00_ex02_expected_files
ls shell00/user_shell00/ex02 > shell00/output/user_shell00_ex02_expected_files

< shell00/output/tester_shell00_ex02_expected_files read TESTER_OUTPUT
< shell00/output/user_shell00_ex02_expected_files read USER_OUTPUT

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

TESTER_OUTPUT=$(ls -l shell00/tester_shell00/ex02/ | awk 'NR>2{printf("%s\n", $1)}')
USER_OUTPUT=$(ls -l shell00/user_shell00/ex02/ | awk 'NR>2{printf("%s\n", $1)}')

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Files Permissions [OK]\n"$RESET
else
	printf $RED"--> Files Permissions [KO]\n"$RESET
fi
printf "\n"

TESTER_OUTPUT=$(ls -l shell00/tester_shell00/ex02/ | awk 'NR>2{printf("%s\n", $2)}')
USER_OUTPUT=$(ls -l shell00/user_shell00/ex02/ | awk 'NR>2{printf("%s\n", $2)}')

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Files Links [OK]\n"$RESET
else
	printf $RED"--> Files Links [KO]\n"$RESET
fi
printf "\n"

TESTER_OUTPUT=$(ls -l shell00/tester_shell00/ex02 | awk 'NR>2{printf("%s\n", $5)}')
USER_OUTPUT=$(ls -l shell00/user_shell00/ex02 | awk 'NR>2{printf("%s\n", $5)}')

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Files Size [OK]\n"$RESET
else
	printf $RED"--> Files Size [KO]\n"$RESET
fi
printf "\n"

TESTER_OUTPUT=$(ls -l shell00/tester_shell00/ex02 | awk 'NR>2{printf("%s %s %s\n", $6, $7, $8)}')
USER_OUTPUT=$(ls -l shell00/user_shell00/ex02 | awk 'NR>2{printf("%s %s %s\n", $6, $7, $8)}')

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Files Date [OK]\n"$RESET
else
	printf $RED"--> Files Date [KO]\n"$RESET
fi
printf "\n"

rm -rf shell00/tester_shell00/ex02/test{0..6}
rm -rf shell00/user_shell00/ex02/test{0..6}

printf $PURPLE"-------------> [TESTING_EX03...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls shell00/tester_shell00/ex03)
USER_OUTPUT=$(ls shell00/user_shell00/ex03)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

cat ~/.ssh/id_rsa.pub > shell00/tester_shell00/ex03/id_rsa_pub

TESTER_OUTPUT="shell00/tester_shell00/ex03/id_rsa_pub"
USER_OUTPUT="shell00/user_shell00/ex03/id_rsa_pub"

if cmp -s $TESTER_OUTPUT $USER_OUTPUT; then
	printf $GREEN"--> File Content [OK]\n"$RESET
else
	printf $RED"--> File Content [KO]\n"$RESET
fi
printf "\n"


printf $PURPLE"-------------> [TESTING_EX04...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls shell00/tester_shell00/ex04)
USER_OUTPUT=$(ls shell00/user_shell00/ex04)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

CURRENT_PWD=$(pwd)

cd /etc

TESTER_OUTPUT=$(bash $CURRENT_PWD/shell00/tester_shell00/ex04/midLS)
USER_OUTPUT=$(bash $CURRENT_PWD/shell00/user_shell00/ex04/midLS)

cd $CURRENT_PWD

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX05...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls shell00/tester_shell00/ex05)
USER_OUTPUT=$(ls shell00/user_shell00/ex05)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

TESTER_OUTPUT=$(bash shell00/tester_shell00/ex05/git_commit.sh)
USER_OUTPUT=$(bash shell00/user_shell00/ex05/git_commit.sh)


if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX06...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls shell00/tester_shell00/ex06)
USER_OUTPUT=$(ls shell00/user_shell00/ex06)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

TESTER_OUTPUT=$(bash shell00/tester_shell00/ex06/git_ignore.sh)
USER_OUTPUT=$(bash shell00/user_shell00/ex06/git_ignore.sh)


if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX07...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls shell00/tester_shell00/ex07)
USER_OUTPUT=$(ls shell00/user_shell00/ex07)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

TESTER_OUTPUT="shell00/tester_shell00/ex07/b"
USER_OUTPUT="shell00/user_shell00/ex07/b"

if cmp -s $TESTER_OUTPUT $USER_OUTPUT; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

printf $PURPLE"-------------> [TESTING_EX08...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls shell00/tester_shell00/ex08)
USER_OUTPUT=$(ls shell00/user_shell00/ex08)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

cp -R shell00/output/original_ex08_test/* shell00/tester_shell00/ex08/
cp -R shell00/output/original_ex08_test/* shell00/user_shell00/ex08/

CURRENT_PWD=$(pwd)
cd shell00/tester_shell00/ex08/

TESTER_OUTPUT=$(bash clean)

cd $CURRENT_PWD
cd shell00/user_shell00/ex08/

USER_OUTPUT=$(bash clean)

cd $CURRENT_PWD

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"

TESTER_OUTPUT=$(ls shell00/tester_shell00/ex08)
USER_OUTPUT=$(ls shell00/user_shell00/ex08)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Remaining Files [OK]\n"$RESET
else
	printf $RED"--> Expected Remaining Files [KO]\n"$RESET
fi
printf "\n"

find shell00/tester_shell00/ex08/ -not \( -name 'clean' -or -name '*ex08' \) -delete
find shell00/user_shell00/ex08/ -not \( -name 'clean' -or -name '*ex08' \) -delete


printf $PURPLE"-------------> [TESTING_EX09...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls shell00/tester_shell00/ex09)
USER_OUTPUT=$(ls shell00/user_shell00/ex09)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"

TESTER_OUTPUT="shell00/tester_shell00/ex09/ft_magic"
USER_OUTPUT="shell00/user_shell00/ex09/ft_magic"

if cmp -s $TESTER_OUTPUT $USER_OUTPUT; then
	printf $GREEN"--> Expected Output [OK]\n"$RESET
else
	printf $RED"--> Expected Output [KO]\n"$RESET
fi
printf "\n"
