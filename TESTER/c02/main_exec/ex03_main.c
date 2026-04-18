/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ex03_main.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nors <nors@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/18 23:03:12 by nors              #+#    #+#             */
/*   Updated: 2022/07/19 21:10:47 by nors             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>

int ft_str_is_numeric(char *str);

int main(void)
{
	printf("%d\n", ft_str_is_numeric(""));
	printf("%d\n", ft_str_is_numeric("LABALINA"));
	printf("%d\n", ft_str_is_numeric("segena"));
	printf("%d\n", ft_str_is_numeric("aRrIvEdErCi"));
	printf("%d\n", ft_str_is_numeric("1337"));
	printf("%d\n", ft_str_is_numeric("42Network"));
	printf("%d\n", ft_str_is_numeric("it's quit...fascinating!!"));
	printf("%d\n", ft_str_is_numeric("-*-32423-**5*46567*6645"));
	printf("%d\n", ft_str_is_numeric("\t\b\n\e\f\v"));
	printf("%d\n", ft_str_is_numeric("#(*$#)(%%&@_#%%)#_^#_)_)^*#@%%)#@_}{|?>';,,"));
	return (0);
}