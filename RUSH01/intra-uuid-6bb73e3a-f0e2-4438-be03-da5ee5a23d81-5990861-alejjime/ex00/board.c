/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   board.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alejjime <alejjime@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/01 17:15:18 by alejjime          #+#    #+#             */
/*   Updated: 2024/09/01 21:38:16 by alejjime         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/*Here is the creation of the board 4x4, using 	malloc()*/
/*We have to transform to int the value from malloc because 
it gave us void, and 4*8 for the space int the memory to have 32 bytes*/
#include <stdlib.h>
#include <unistd.h>

void	putstring(char *a);

int	**beging_board(void)
{
	int	**board;
	int	i;
	int	j;

	board = (int **)malloc(4 * 8);
	if (board == NULL)
		return (NULL);
	i = 0;
	while (i < 4)
	{
		board[i] = (int *)malloc(4 * sizeof(int));
		if (board[i] == NULL)
		{
			while (--i >= 0)
			{
				free(board[i]);
				free(board);
				return (NULL);
			}
		}
		j = 0;
		while (j < 4)
		{
			board[i][j] = 0;
			j++;
		}
	}
	return (board);
}

void	free_board(int **board)
{
	int	i;

	i = 0;
	while (i < 4)
	{
		free(board[i]);
		i++;
	}
	free(board);
}

void	print_board(int **board)
{
	int	i;
	int	j;
	int	k;

	i = 0;
	while (i < 4)
	{
		j = 0;
		while (j < 4)
		{
			k = board[i][j] + '0';
			write(1, &k, 1);
			if (j < 3)
				putstring(" ");
			j++;
		}
		putstring("\n");
		i++;
	}
}
