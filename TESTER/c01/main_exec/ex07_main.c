/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ex07_main.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nors <nors@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/16 14:10:25 by nors              #+#    #+#             */
/*   Updated: 2022/07/16 14:13:56 by nors             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>

void	ft_rev_int_tab(int *tab, int size);

int main(void)
{
	int tab[] = {9, 97, 0, 65, 78, -8, 77, 45, -99999, 84, -999999999};
	int size = 11;
	for (int i = 0; i < size; i++)
		printf("%d ", tab[i]);
	printf("\n");
	ft_rev_int_tab(tab, size);
	for (int i = 0; i < size; i++)
		printf("%d ", tab[i]);
	printf("\n");
	return (0);
}