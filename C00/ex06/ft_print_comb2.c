/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_comb2.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: halam <halam@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/08/26 19:17:57 by halam             #+#    #+#             */
/*   Updated: 2024/08/26 22:40:40 by halam            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void	ft_comb1(int z)
{
	if (z < 10)
	{
		write (1, "0", 1);
	}
	else
	{
		write (1, &"0123456789"[z / 10], 1);
	}
	write (1, &"0123456789"[z % 10], 1);
}

void	ft_print_comb2(void)
{
	int	x;
	int	y;

	x = 0;
	while (x <= 98)
	{
		y = x + 1;
		while (y <= 99)
		{
			ft_comb1(x);
			write (1, " ", 1);
			ft_comb1(y);
			if (!(x == 98 && y == 99))
				write (1, ", ", 2);
			y++;
		}
		x++;
	}
}

// int	main(void)
// {
// 	ft_print_comb2();
// 	return (0);
// }
