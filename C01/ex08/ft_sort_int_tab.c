/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_sort_int_tab.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: halam <halam@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/08/29 16:38:15 by halam             #+#    #+#             */
/*   Updated: 2024/08/29 21:21:19 by halam            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

void	ft_sort_int_tab(int *tab, int size)
{
	int	i;
	int	j;
	int	temp;

	i = 0;
	while (i < size - 1)
		// to compare with the last element when i come to i = size-2,
		tab[i] vs tab[size - 1]
	{
		j = i + 1;
		while (j < size)
			// to check until the last element because < size will equal to size
			-1
		{
			if (tab[j] < tab[i])
			{
				temp = tab[i];
				tab[i] = tab[j];
				tab[j] = temp;
			}
			j++;
		}
		i++;
	}
}

// int temp;
// int i;

// temp = 0;
// while (size >= 0)
// {
// 	i = 0;
// 	while (i < size -1)
// 	{
// 		if (tab[i] > tab [i+1])
// 		{
// 			temp = tab[i];
// 			tab[i] = tab[i+1];
// 			tab[i+1] = temp;
// 		}
// 		i++
// 	}
// 	size--;
// }