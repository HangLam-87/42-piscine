/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ex11_main.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nors <nors@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/18 23:28:32 by nors              #+#    #+#             */
/*   Updated: 2022/07/19 21:11:08 by nors             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>

void	ft_putstr_non_printable(char *str);

int main(void)
{
	ft_putstr_non_printable("");
	printf("\n");
	ft_putstr_non_printable("\t\t\t\t\t\t\t\t\r\e\a");
	printf("\n");
	ft_putstr_non_printable("Hello world");
	printf("\n");
	ft_putstr_non_printable("Nothing should\tbe\ahere");
	printf("\n");
	ft_putstr_non_printable("\r\r\r\v\n\n\r\v");
	printf("\n");
	return (0);
}