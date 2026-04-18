/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ex05_main.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nors <nors@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/18 23:04:41 by nors              #+#    #+#             */
/*   Updated: 2022/07/19 21:10:35 by nors             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>

int ft_str_is_uppercase(char *str);

int main(void)
{
	printf("%d\n", ft_str_is_uppercase(""));
	printf("%d\n", ft_str_is_uppercase("LABALINA"));
	printf("%d\n", ft_str_is_uppercase("segena"));
	printf("%d\n", ft_str_is_uppercase("aRrIvEdErCi"));
	printf("%d\n", ft_str_is_uppercase("1337"));
	printf("%d\n", ft_str_is_uppercase("42Network"));
	printf("%d\n", ft_str_is_uppercase("it's quit...fascinating!!"));
	printf("%d\n", ft_str_is_uppercase("-*-32423-**5*46567*6645"));
	printf("%d\n", ft_str_is_uppercase("\t\b\n\e\f"));
	printf("%d\n", ft_str_is_uppercase("#(*$#)(%%&@_#%%)#_^#_)_)^*#@%%)#@_}{|?>';,,"));
	return (0);
}