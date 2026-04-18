/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ex03_main.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nors <nors@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/16 13:44:14 by nors              #+#    #+#             */
/*   Updated: 2022/07/16 13:50:03 by nors             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>

void	ft_div_mod(int a, int b, int *div, int *mod);

int main(void)
{
	int two = 2;
	int eight = 8;
	int div_res = 999;
	int mod_res = 999;

	printf("two = %d ; eight = %d ; div_res = %d ; mod_res = %d\n", two, eight, div_res, mod_res);
	ft_div_mod(two, eight, &div_res, &mod_res);
	printf("two = %d ; eight = %d ; div_res = %d ; mod_res = %d\n", two, eight, div_res, mod_res);
	return (0);
}