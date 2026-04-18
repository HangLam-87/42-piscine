/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ex04_main.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nors <nors@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/16 13:52:16 by nors              #+#    #+#             */
/*   Updated: 2022/07/16 13:54:49 by nors             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>

void	ft_ultimate_div_mod(int *a, int *b);

int main(void)
{
	int seven = 7;
	int three = 3;

	printf("seven = %d ; three = %d\n", seven, three);
	ft_ultimate_div_mod(&seven, &three);
	printf("seven = %d ; three = %d\n", seven, three);
	
	return (0);
}