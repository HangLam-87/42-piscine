/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ex00_main.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nors <nors@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/18 20:06:31 by nors              #+#    #+#             */
/*   Updated: 2022/07/18 22:47:44 by nors             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>

char	*ft_strcpy(char	*dest, char *src);

int main(void)
{
	char dest[20];

	memcpy(dest, "AAAAAAAAAAAAAAAAAAA", 20);
	printf("%s\n", dest);
	printf("%s\n", ft_strcpy(dest, "life"));
	printf("%s\n", dest);
	memcpy(dest, "AAAAAAAAAAAAAAAAAAA", 20);
	printf("%s\n", dest);
	printf("%s\n", ft_strcpy(dest, ""));
	printf("%s\n", dest);
	memcpy(dest, "AAAAAAAAAAAAAAAAAAA", 20);
	printf("%s\n", dest);
	printf("%s\n", ft_strcpy(dest, "BBBBBBBBBBBBBBBBBBB"));
	printf("%s\n", dest);
	return (0);
}