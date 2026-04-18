/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_ultimate_div_mod.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: halam <halam@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/08/27 22:29:40 by halam             #+#    #+#             */
/*   Updated: 2024/08/28 12:50:14 by halam            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

void	ft_ultimate_div_mod(int *a, int *b)
{
	int	temp;

	if (*b != 0)
	{
		temp = *a;
		*a = temp / *b;
		*b = temp % *b;
	}
}

// int	main(void)
// {
// 	int	a;
// 	int	b;

// 	a = 9;
// 	b = 2;
// 	ft_ultimate_div_mod(&a, &b);
// 	return (0);
// }
