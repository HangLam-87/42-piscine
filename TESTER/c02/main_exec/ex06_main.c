/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ex06_main.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nors <nors@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/18 23:05:06 by nors              #+#    #+#             */
/*   Updated: 2022/07/19 21:10:26 by nors             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>

int ft_str_is_printable(char *str);

int main(void)
{
	printf("%d\n", ft_str_is_printable(""));
	printf("%d\n", ft_str_is_printable("LABALINA"));
	printf("%d\n", ft_str_is_printable("segena"));
	printf("%d\n", ft_str_is_printable("aRrIvEdErCi"));
	printf("%d\n", ft_str_is_printable("1337"));
	printf("%d\n", ft_str_is_printable("42Network"));
	printf("%d\n", ft_str_is_printable("it's quit...fascinating!!"));
	printf("%d\n", ft_str_is_printable("-*-32423-**5*46567*6645"));
	printf("%d\n", ft_str_is_printable("\t\b\n\e\f"));
	printf("%d\n", ft_str_is_printable("#(*$#)(%%&@_#%%)#_^#_)_)^*#@%%)#@_}{|?>';,,"));
	return (0);
}