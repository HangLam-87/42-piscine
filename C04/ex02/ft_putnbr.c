/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: halam <halam@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/05 21:27:08 by halam             #+#    #+#             */
/*   Updated: 2024/09/09 16:16:09 by halam            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void	put_char(char c)
{
	write(1, &c, 1);
}

void	ft_putnbr(int nb)
{
	unsigned int	num;

	if (nb < 0)
	{
		put_char('-');
		num = (unsigned int)-nb;
	}
	else
	{
		num = (unsigned int)nb;
	}
	if (num >= 10)
	{
		ft_putnbr(num / 10);
	}
	put_char((num % 10) + '0');
}
