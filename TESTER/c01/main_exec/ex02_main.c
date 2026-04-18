/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ex02_main.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nors <nors@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/16 13:41:58 by nors              #+#    #+#             */
/*   Updated: 2022/07/16 13:43:56 by nors             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>

void	ft_swap(int	*a, int *b);

int main(void)
{
	int one = 1;
	int nine = 9;

	printf("one = %d ; nine = %d\n", one, nine);
	ft_swap(&one, &nine);
	printf("one = %d ; nine = %d\n", one, nine);
}