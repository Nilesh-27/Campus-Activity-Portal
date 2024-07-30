 package com.klef.ep.services;

import java.util.List;


import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.klef.ep.models.User;
import com.klef.ep.models.Admin;
import com.klef.ep.models.Event;

@Stateless
@TransactionManagement(TransactionManagementType.BEAN)
public class EventServiceImpl  implements EventService
{

	@Override
	public Event RegEvent(String username, String pwd) 
	{
		return null;
		
	}
 

}