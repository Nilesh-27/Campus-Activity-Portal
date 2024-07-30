package com.klef.ep.services;

import java.util.List;

import javax.ejb.Remote;

import com.klef.ep.models.Admin;
import com.klef.ep.models.User;
import com.klef.ep.models.Event;

@Remote
public interface EventService
{
  public Event RegEvent(String username,String pwd);
}