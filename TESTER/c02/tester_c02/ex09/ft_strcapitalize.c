/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcapitalize.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nelidris <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/08/10 08:12:30 by nelidris          #+#    #+#             */
/*   Updated: 2021/08/11 10:01:24 by nelidris         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int	digit(char c)
{
	if (c < '0' || c > '9')
		return (1);
	return (0);
}

int	upper(char c)
{
	if (c < 'A' || c > 'Z')
		return (1);
	return (0);
}

int	lower(char c)
{
	if (c < 'a' || c > 'z')
		return (1);
	return (0);
}

char	*ft_strcapitalize(char *str)
{
	int	i;

	i = 0;
	while (str[i])
	{
		if (digit(str[i - 1]) && upper(str[i - 1]) && lower(str[i - 1]))
		{
			if (str[i] >= 'a' && str[i] <= 'z')
				str[i] -= 32;
		}
		else if (!(upper(str[i - 1]) && lower(str[i - 1]) && digit(str[i - 1])))
			if (str[i] >= 'A' && str[i] <= 'Z')
				str[i] += 32;
		i++;
	}
	return (str);
}
