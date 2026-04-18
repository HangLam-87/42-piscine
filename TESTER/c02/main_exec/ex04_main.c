/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ex04_main.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nors <nors@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/18 23:03:55 by nors              #+#    #+#             */
/*   Updated: 2022/07/19 21:10:41 by nors             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>

int ft_str_is_lowercase(char *str);

int main(void)
{
	printf("%d\n", ft_str_is_lowercase(""));
	printf("%d\n", ft_str_is_lowercase("LABALINA"));
	printf("%d\n", ft_str_is_lowercase("segena"));
	printf("%d\n", ft_str_is_lowercase("aRrIvEdErCi"));
	printf("%d\n", ft_str_is_lowercase("1337"));
	printf("%d\n", ft_str_is_lowercase("42Network"));
	printf("%d\n", ft_str_is_lowercase("it's quit...fascinating!!"));
	printf("%d\n", ft_str_is_lowercase("-*-32423-**5*46567*6645"));
	printf("%d\n", ft_str_is_lowercase("\t\b\n\e\f\v"));
	printf("%d\n", ft_str_is_lowercase("#(*$#)(%%&@_#%%)#_^#_)_)^*#@%%)#@_}{|?>';,,"));
	return (0);
}