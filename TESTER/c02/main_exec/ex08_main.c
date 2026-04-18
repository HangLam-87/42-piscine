/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ex08_main.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nors <nors@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/18 23:20:07 by nors              #+#    #+#             */
/*   Updated: 2022/07/19 21:10:29 by nors             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>

char	*ft_strlowcase(char *str);

int main(void)
{
	printf("%s\n", ft_strlowcase(strdup("")));
	printf("%s\n", ft_strlowcase(strdup("LABALINA")));
	printf("%s\n", ft_strlowcase(strdup("segena")));
	printf("%s\n", ft_strlowcase(strdup("aRrIvEdErCi")));
	printf("%s\n", ft_strlowcase(strdup("1337")));
	printf("%s\n", ft_strlowcase(strdup("42Network")));
	printf("%s\n", ft_strlowcase(strdup("it's quit...fascinating!!")));
	printf("%s\n", ft_strlowcase(strdup("-*-32423-**5*46567*6645")));
	printf("%s\n", ft_strlowcase(strdup("\t\b\n\e\f")));
	printf("%s\n", ft_strlowcase(strdup("#(*$#)(%%&@_#%%)#_^#_)_)^*#@%%)#@_}{|?>';,,")));
	return (0);
}