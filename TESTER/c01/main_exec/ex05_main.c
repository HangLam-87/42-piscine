/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ex05_main.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nors <nors@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/16 13:56:23 by nors              #+#    #+#             */
/*   Updated: 2022/07/16 13:59:18 by nors             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void	ft_putstr(char *str);

int main(void)
{
	ft_putstr("Hello World!\n");
	ft_putstr("jksdfjlksadjflksjdflkasjdflaskjflkasdf\n");
	ft_putstr("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBHHHHhHhhhhHHHHHHHHhhhHHHHhhhHHhhhhhHhhh\n");
	ft_putstr("Speedster Mate\n");
	ft_putstr("\n\n\t\t\t\e\r\bc\b\n\n");
	ft_putstr("\033[38;2;57;181;74mCOLORS YEAH\033[0m\n");
}
