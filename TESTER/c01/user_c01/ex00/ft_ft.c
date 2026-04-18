/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_ft.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: halam <halam@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/08/27 16:13:43 by halam             #+#    #+#             */
/*   Updated: 2024/08/27 20:06:28 by halam            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

void	ft_ft(int *nbr)
{
	*nbr = 42;
}

int	main(void)
{
	int	n;
	int	*nbr;

	n = 9;
	nbr = &n;
	ft_ft(nbr);
}

// ptr => adress of a memory cell;
// *ptr = value on the address of memory cell;
