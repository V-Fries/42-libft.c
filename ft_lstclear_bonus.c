/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstclear_bonus.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vfries <vfries@student.42lyon.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/13 15:51:32 by vfries            #+#    #+#             */
/*   Updated: 2022/11/08 15:12:23 by vfries           ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stdlib.h>

void	ft_lstclear(t_list **lst, void (*del)(void *))
{
	t_list	*cursor;
	t_list	*delete_me;

	if (lst == NULL || del == NULL)
		return ;
	cursor = *lst;
	while (cursor)
	{
		delete_me = cursor;
		cursor = cursor->next;
		del(delete_me->content);
		free(delete_me);
	}
	*lst = NULL;
}
