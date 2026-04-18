/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   validation.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alejjime <alejjime@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/01 20:04:41 by alejjime          #+#    #+#             */
/*   Updated: 2024/09/01 21:27:15 by alejjime         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

// Function to validate the input
int	is_valid_input(char *input)
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
			return (0);
		i++;
	}
	return (count == 16);
}

// Function to count the visible boxes in a row or column
int	count_visible(int *line, int length)
{
	int	max;
	int	visible;
	int	i;

	max = 0;
	visible = 0;
	i = 0;
	while (i < 4)
	{
		if (line[i] > max)
		{
			max = line[i];
			visible++;
		}
		i += length / 4;
	}
	return (visible);
}

// Function to validate the views from the edges of the board
int	validate_views(int **board, char *input)
{
	int	i;
	int	correct_views;

	i = 0;
	while (i < 4)
	{
		correct_views = input[i + 8] - '0';
		if (count_visible(board[i], 4) != correct_views)
			return (0);
		correct_views = input[i + 12] - '0';
		if (count_visible(board[i], -4) != correct_views)
			return (0);
		correct_views = input[i] - '0';
		if (count_visible ((int []){board[0][i], \
		board[1][i], board[2][i], board[3][i]}, 4) != correct_views)
			return (0);
		correct_views = input[i + 4] - '0';
		if (count_visible ((int []){board[3][i], \
		board[2][i], board[1][i], board[0][i]}, 4) != correct_views)
			return (0);
		i++;
	}
	return (1);
}
