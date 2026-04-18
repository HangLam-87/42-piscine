/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ex01_main.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nors <nors@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/18 22:48:38 by nors              #+#    #+#             */
/*   Updated: 2022/07/19 21:08:46 by nors             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>

char *ft_strncpy(char *dest, char *src, unsigned int n);

int main(void)
{
	char dest[20];

	memcpy(dest, "AAAAAAAAAAAAAAAAAAA", 20);
	printf("%s\n", dest);
	printf("%s\n", ft_strncpy(dest, "life", 4));
	printf("%s\n", dest);
	memcpy(dest, "AAAAAAAAAAAAAAAAAAA", 20);
	printf("%s\n", dest);
	printf("%s\n", ft_strncpy(dest, "", 0));
	printf("%s\n", dest);
	memcpy(dest, "AAAAAAAAAAAAAAAAAAA", 20);
	printf("%s\n", dest);
	printf("%s\n", ft_strncpy(dest, "BBBBBBBBBBBBBBBBBBB", 20));
	printf("%s\n", dest);
	memcpy(dest, "AAAAAAAAAAAAAAAAAAA", 20);
	printf("%s\n", dest);
	printf("%s\n", ft_strncpy(dest, "gotchaa", 19));
	printf("%s\n", dest);
	memcpy(dest, "AAAAAAAAAAAAAAAAAAA", 20);
	printf("%s\n", dest);
	printf("%s\n", ft_strncpy(dest, "", 5));
	printf("%s\n", dest);
	memcpy(dest, "AAAAAAAAAAAAAAAAAAA", 20);
	printf("%s\n", dest);
	printf("%s\n", ft_strncpy(dest, "CCCCCCCCCCCCCCCCCCC", 5));
	printf("%s\n", dest);
	return (0);
}