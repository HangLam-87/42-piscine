/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ex06_main.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nors <nors@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/16 13:59:39 by nors              #+#    #+#             */
/*   Updated: 2022/07/16 14:09:29 by nors             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>

int	ft_strlen(char *str);

int main(void)
{
	printf("%d\n", ft_strlen(""));
	printf("%d\n", ft_strlen("Hello World!"));
	printf("%d\n", ft_strlen("Let's goooooo"));
	printf("%d\n", ft_strlen("\t\t\t\t\t\t\t\t\t\n\b\b\b\b\b\v\f\f\\\\\\\a"));
	printf("%d\n", ft_strlen("    sdlkf jsdkf jsdlf jsdl kfjsdlfk jasdlkf jsadlkf jsldf "));
	return (0);
}