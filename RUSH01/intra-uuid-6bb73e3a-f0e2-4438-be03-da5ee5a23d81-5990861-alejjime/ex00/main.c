/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alejjime <alejjime@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/01 16:18:29 by alejjime          #+#    #+#             */
/*   Updated: 2024/09/01 20:20:17 by alejjime         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

int		**beging_board(void);
void	print_board(int **board);
void	free_board(int **board);
int		solver(int **board, char *input);
/*Function to print strings*/

void	putstring(char *a)
{
	while (*a != '\0')
	{
		write(1, a, 1);
		a++;
	}
}
/*We validate the command line argument taken	 like an input*/

int	validation(char *input)
{
	int	i;
	int	count;

	i = 0;
	count = 0;
	while (input[i])
	{
		if (input[i] >= '1' && input[i] <= '4')
			count++;
		else if (input[i] != ' ')
		{
			return (0);
		}
		i++;
	}
	return (count == 16);
}

/*Main function - we call the other functions from here*/
int	main(int argc, char **argv)
{
	int	**board;

	if (argc != 2 || !validation(argv[1]))
	{
		putstring("Error");
		return (0);
	}
	board = beging_board();
	if (board == NULL)
		return (1);

	if (!solver(board, argv[1]))
	{
		free_board(board);
		putstring("Error");
		return (1);
	}

	print_board(board);
	free_board(board);
	return (0);
}
