/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ex02_main.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nors <nors@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/18 22:56:39 by nors              #+#    #+#             */
/*   Updated: 2022/07/19 21:10:51 by nors             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>

int ft_str_is_alpha(char *str);

int main(void)
{
	printf("%d\n", ft_str_is_alpha(""));
	printf("%d\n", ft_str_is_alpha("LABALINA"));
	printf("%d\n", ft_str_is_alpha("segena"));
	printf("%d\n", ft_str_is_alpha("aRrIvEdErCi"));
	printf("%d\n", ft_str_is_alpha("1337"));
	printf("%d\n", ft_str_is_alpha("42Network"));
	printf("%d\n", ft_str_is_alpha("it's quit...fascinating!!"));
	printf("%d\n", ft_str_is_alpha("-*-32423-**5*46567*6645"));
	printf("%d\n", ft_str_is_alpha("\t\b\n\e\f\v"));
	printf("%d\n", ft_str_is_alpha("#(*$#)(%%&@_#%%)#_^#_)_)^*#@%%)#@_}{|?>';,,"));
	return (0);
}