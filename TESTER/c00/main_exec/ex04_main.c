/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ex04_main.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nors <nors@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/14 18:37:10 by nors              #+#    #+#             */
/*   Updated: 2022/07/14 18:49:52 by nors             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void ft_is_negative(int n);

int main(void)
{
	ft_is_negative(59);
	write(1, "\n", 1);
	ft_is_negative(-1);
	write(1, "\n", 1);
	ft_is_negative(0);
	write(1, "\n", 1);
	ft_is_negative(-89);
	write(1, "\n", 1);
	ft_is_negative(-79);
	write(1, "\n", 1);
	ft_is_negative(13548687);
	write(1, "\n", 1);
	ft_is_negative(9875);
	write(1, "\n", 1);
	ft_is_negative(1);
	write(1, "\n", 1);
	ft_is_negative(-99999);
	write(1, "\n", 1);
	return (0);
}