/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ex08_main.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nors <nors@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/14 18:52:52 by nors              #+#    #+#             */
/*   Updated: 2022/07/14 18:57:17 by nors             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void ft_print_combn(int n);

int		main(void)
{
	ft_print_combn(0);
	write(1, "\n---------\n", 11);
	ft_print_combn(1);
	write(1, "\n---------\n", 11);
	ft_print_combn(2);
	write(1, "\n---------\n", 11);
	ft_print_combn(3);
	write(1, "\n---------\n", 11);
	ft_print_combn(4);
	write(1, "\n---------\n", 11);
	ft_print_combn(5);
	write(1, "\n---------\n", 11);
	ft_print_combn(6);
	write(1, "\n---------\n", 11);
	ft_print_combn(7);
	write(1, "\n---------\n", 11);
	ft_print_combn(8);
	write(1, "\n---------\n", 11);
	ft_print_combn(9);
	write(1, "\n---------\n", 11);
	ft_print_combn(10);
	write(1, "\n---------\n", 11);
	return (0);
}