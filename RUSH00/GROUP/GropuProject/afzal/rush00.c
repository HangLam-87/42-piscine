/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rush00.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: halam <halam@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/08/23 20:59:29 by mafzal            #+#    #+#             */
/*   Updated: 2024/08/25 19:56:03 by halam            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void	ft_putchar(char c);

void	print_edges(int row, int col, int width, int height)
{
	if (row == 0 || row == height - 1)
	{
		ft_putchar('-');
	}
	else if (col == 0 || col == width - 1)
	{
		ft_putchar('|');
	}
	else
	{
		ft_putchar(' ');
	}
}

void	print_corners(int row, int col, int width, int height)
{
	if ((col == 0 && row == 0))
	{
		ft_putchar('o');
	}
	else if ((col == 0 && row == height - 1))
	{
		ft_putchar('o');
	}
	else if ((col == width - 1 && row == 0))
	{
		ft_putchar('o');
	}
	else if ((col == width - 1 && row == height - 1))
	{
		ft_putchar('o');
	}
	else
	{
		print_edges(row, col, width, height);
	}
}

void	rush(int width, int height)
{
	int	row;
	int	col;

	row = 0;
	while (row < width)
	{
		col = 0;
		while (col < height)
		{
			print_corners(row, col, width, height);
			col++;
		}
		ft_putchar('\n');
		row++;
	}
}
