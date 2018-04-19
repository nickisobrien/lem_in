/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   error.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jbrown <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/04/18 22:09:38 by jbrown            #+#    #+#             */
/*   Updated: 2018/04/18 22:09:51 by jbrown           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <lem_in.h>

void	error(char *str)
{
	ft_printf("%s\n", str);
	exit(EXIT_FAILURE);
}
