/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: halam <halam@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/01 16:18:29 by alejjime          #+#    #+#             */
/*   Updated: 2024/09/01 22:42:20 by halam            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

/*We validate the command line argument taken like an input*/

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
	if (argc != 2 || !validation(argv[1]))
	{
		write(1, "error", 5)
	}
	
}
