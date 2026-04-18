/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ex07_main.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nors <nors@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/18 23:05:46 by nors              #+#    #+#             */
/*   Updated: 2022/07/19 21:10:21 by nors             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>

char	*ft_strupcase(char *str);

int main(void)
{
	printf("%s\n", ft_strupcase(strdup("")));
	printf("%s\n", ft_strupcase(strdup("LABALINA")));
	printf("%s\n", ft_strupcase(strdup("segena")));
	printf("%s\n", ft_strupcase(strdup("aRrIvEdErCi")));
	printf("%s\n", ft_strupcase(strdup("1337")));
	printf("%s\n", ft_strupcase(strdup("42Network")));
	printf("%s\n", ft_strupcase(strdup("it's quit...fascinating!!")));
	printf("%s\n", ft_strupcase(strdup("-*-32423-**5*46567*6645")));
	printf("%s\n", ft_strupcase(strdup("\t\b\n\e\f")));
	printf("%s\n", ft_strupcase(strdup("#(*$#)(%%&@_#%%)#_^#_)_)^*#@%%)#@_}{|?>';,,")));
	return (0);
}