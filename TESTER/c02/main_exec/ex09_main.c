/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ex09_main.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nors <nors@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/18 23:21:58 by nors              #+#    #+#             */
/*   Updated: 2022/07/19 21:11:01 by nors             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>

char	*ft_strcapitalize(char *str);

int main(void)
{
	printf("%s\n", ft_strcapitalize(strdup("")));
	printf("%s\n", ft_strcapitalize(strdup("LABALINA")));
	printf("%s\n", ft_strcapitalize(strdup("segena")));
	printf("%s\n", ft_strcapitalize(strdup("aRrIvEdErCi")));
	printf("%s\n", ft_strcapitalize(strdup("Hee3l;l+o Wo*r]ld")));
	printf("%s\n", ft_strcapitalize(strdup("Hee3\tl;\nl+o\a W\ro*r]ld")));
	printf("%s\n", ft_strcapitalize(strdup("1337")));
	printf("%s\n", ft_strcapitalize(strdup("42Network")));
	printf("%s\n", ft_strcapitalize(strdup("it's quit...fascinating!!")));
	printf("%s\n", ft_strcapitalize(strdup("-*-32423-**5*46567*6645")));
	printf("%s\n", ft_strcapitalize(strdup("\t\b\n\e\f\v")));
	printf("%s\n", ft_strcapitalize(strdup("#(*$#)(%%&@_#%%)#_^#_)_)^*#@%%)#@_}{|?>';,,")));
	return (0);
}