/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ex00_main.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nors <nors@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/14 18:30:53 by nors              #+#    #+#             */
/*   Updated: 2022/07/14 18:50:09 by nors             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void	ft_putchar(char c);

int	main(void)
{
	ft_putchar('a');
	write(1, "\n", 1);
	ft_putchar('b');
	write(1, "\n", 1);
	ft_putchar('c');
	write(1, "\n", 1);
	ft_putchar('+');
	write(1, "\n", 1);
	ft_putchar('\n');
	write(1, "\n", 1);
	ft_putchar('\b');
	write(1, "\n", 1);
	ft_putchar('3');
	write(1, "\n", 1);
	ft_putchar('$');
	write(1, "\n", 1);
	ft_putchar('*');
	write(1, "\n", 1);
	ft_putchar(']');
	write(1, "\n", 1);
	ft_putchar(')');
	write(1, "\n", 1);
	ft_putchar('+');
	write(1, "\n", 1);
	ft_putchar('$');
	write(1, "\n", 1);
	ft_putchar('\n');
	return (0);
}