/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ex10_main.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nors <nors@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/18 23:25:48 by nors              #+#    #+#             */
/*   Updated: 2022/07/19 21:12:07 by nors             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>

unsigned int	ft_strlcpy(char *dest, char *src, unsigned int size);

int main(void)
{
	char dest[20];

	memcpy(dest, "AAAAAAAAAAAAAAAAAAA", 20);
	printf("%s\n", dest);
	printf("%u\n", ft_strlcpy(dest, "life", 4));
	printf("%s\n", dest);
	memcpy(dest, "AAAAAAAAAAAAAAAAAAA", 20);
	printf("%s\n", dest);
	printf("%u\n", ft_strlcpy(dest, "", 0));
	printf("%s\n", dest);
	memcpy(dest, "AAAAAAAAAAAAAAAAAAA", 20);
	printf("%s\n", dest);
	printf("%u\n", ft_strlcpy(dest, "BBBBBBBBBBBBBBBBBBB", 20));
	printf("%s\n", dest);
	memcpy(dest, "AAAAAAAAAAAAAAAAAAA", 20);
	printf("%s\n", dest);
	printf("%u\n", ft_strlcpy(dest, "gotchaa", 19));
	printf("%s\n", dest);
	memcpy(dest, "AAAAAAAAAAAAAAAAAAA", 20);
	printf("%s\n", dest);
	printf("%u\n", ft_strlcpy(dest, "", 5));
	printf("%s\n", dest);
	memcpy(dest, "AAAAAAAAAAAAAAAAAAA", 20);
	printf("%s\n", dest);
	printf("%u\n", ft_strlcpy(dest, "CCCCCCCCCCCCCCCCCCC", 5));
	printf("%s\n", dest);
	return (0);
}