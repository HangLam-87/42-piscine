/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: halam <halam@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/11 18:58:01 by halam             #+#    #+#             */
/*   Updated: 2024/09/11 23:20:59 by halam            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>

int	str_len(char *str)
{
	int	len;

	len = 0;
	while (str[len] != '\0')
	{
		len++;
	}
	return (len);
}

int	ft_strs_len(int size, char **strs, char *sep)
{
	int	strs_len;
	int	i;

	if (size == 0)
	{
		return (1);
	}
	i = 0;
	strs_len = 0;
	while (i < size)
	{
		strs_len = str_len(strs[i]);
		i++;
	}
	strs_len = (strs_len + str_len(sep) * (size - 1)) + 1;
	return (strs_len);
}

void	copy_strs_and_sep(char *result, int size, char **strs, char *sep)
{
	int	i;
	int	j;
	int	k;

	i = 0;
	k = 0;
	while (i < size)
	{
		j = 0;
		while (strs[i][j] != '\0')
		{
			result[k++] = strs[i][j++];
		}
		if (i < size - 1)
		{
			j = 0;
			while (sep[j] != '\0')
			{
				result[k++] = sep[j++];
			}
		}
		i++;
	}
	result[k] = '\0';
}

char	*ft_strjoin(int size, char **strs, char *sep)
{
	char	*result;
	int		strs_len;

	strs_len = ft_strs_len(size, strs, sep);
	result = (char *)malloc((strs_len) * sizeof(char));
	if (result == NULL)
	{
		return (NULL);
	}
	if (size == 0)
	{
		result[0] = '\0';
	}
	if (size > 0)
	{
		copy_strs_and_sep(result, size, strs, sep);
	}
	return (result);
}
