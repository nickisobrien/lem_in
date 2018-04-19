/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nobrien <nobrien@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/04/18 19:27:42 by jbrown            #+#    #+#             */
/*   Updated: 2018/04/19 04:28:13 by nobrien          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <lem_in.h>

int		main(void)
{
	t_world	w;

	parse_input(&w);
	set_unvisited(&w);
	// ft_printf("%d\n", find_shortest_path_room(&w, 3));
	place_ants(&w);
	// ft_printf("%d\n", bfs_from(&w, 5));
	return (0);
}
