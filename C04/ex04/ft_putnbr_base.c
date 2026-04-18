/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr_base.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: halam <halam@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/07 23:30:04 by halam             #+#    #+#             */
/*   Updated: 2024/09/09 18:17:19 by halam            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

static int	check_base_valid(char *base)
{
	int	i;
	int	j;

	i = 0;
	while (base[i] != '\0')
	{
		if (base[i] == '-' || base[i] == '+')
		{
			return (0);
		}
		j = i + 1;
		while (base[j] != '\0')
		{
			if (base[i] == base[j])
				return (0);
			j++;
		}
		i++;
	}
	return (i);
}

void	convert_to_base(unsigned int num, char *base, int size)
{
	char	c;

	{
		if (num > 0)
		{
			convert_to_base(num / size, base, size);
			c = base[num % size];
			write(1, &c, 1);
		}
	}
}

void	ft_putnbr_base(int nbr, char *base)
{
	unsigned int	num;
	int				size;

	size = check_base_valid(base);
	if (size > 1)
	{
		if (nbr == 0)
		{
			write(1, "0", 1);
		}
		if (nbr < 0)
		{
			write(1, "-", 1);
			num = (unsigned int)(-nbr);
			convert_to_base(num, base, size);
		}
		else
		{
			num = (unsigned int)nbr;
			convert_to_base(num, base, size);
		}
	}
}
