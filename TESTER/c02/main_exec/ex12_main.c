/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ex12_main.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nors <nors@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/19 00:13:18 by nors              #+#    #+#             */
/*   Updated: 2022/07/19 00:25:21 by nors             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>

void	*ft_print_memory(void *addr, unsigned int size);

int		main(void)
{
	char	*string;

	string = "Bonjour les aminches\t\n\tc  est fou.tout.ce qu on peut faire avec...print_memory....lol.lol. ";
	ft_print_memory(string, 92);
	string = "Life can be tricky sometimes, but don't take it always srsly, have fun sometime\t it will help trust me.";
	ft_print_memory(string, 92);
}