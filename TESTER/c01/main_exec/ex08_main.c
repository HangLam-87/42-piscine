/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ex08_main.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nors <nors@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/16 14:14:41 by nors              #+#    #+#             */
/*   Updated: 2022/07/16 14:16:12 by nors             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>

void	ft_sort_int_tab(int *tab, int size);

int main(void)
{
	int tab[] = {9, 97, 0, 65, 78, -8, 77, 45, -99999, 84, -999999999};
	int size = 11;
	for (int i = 0; i < size; i++)
		printf("%d ", tab[i]);
	printf("\n");
	ft_sort_int_tab(tab, size);
	for (int i = 0; i < size; i++)
		printf("%d ", tab[i]);
	printf("\n");
	return (0);
}