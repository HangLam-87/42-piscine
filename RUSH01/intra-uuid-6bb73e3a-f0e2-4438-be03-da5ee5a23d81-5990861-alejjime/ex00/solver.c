/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   solver.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alejjime <alejjime@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/01 19:16:38 by alejjime          #+#    #+#             */
/*   Updated: 2024/09/01 21:38:04 by alejjime         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */


/*This function checks if is possible to place 
the number in that row and column(shouldnt be repeated)*/
int	validate_views(int **board, char *input);

int	placeable(int **board, int row, int column, int num)
{
	int	i;

	i = 0;
	while (i < 4)
	{
		if (board[row][column] == num || board[i][column] == num)
		{
			return (0);
		}
		i++;
	}
	return (1);
}

int	solver(int **board, char *input)
{
	int	row;
	int	column;
	int	num;

	row = 0;
	num = 1;
	while (row < 4)
	{
		while (column < 4)
		{
			if (board[row][column] == 0)
			{
				while (num <= 4)
				{
					if (placeable(board, row, column, num))
					{
						board[row][column] = num;
						if (solver(board, input))
							return (1);
						board[row][column] = 0;
					}
					num++;
				}
				return (0);
			}
			column++;
		}
		row++;
		column = 0;
	}
	return (validate_views(board, input));
}
