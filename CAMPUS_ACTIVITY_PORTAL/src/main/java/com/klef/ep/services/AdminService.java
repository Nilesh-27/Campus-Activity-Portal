package com.klef.ep.services;

import java.util.List;

import javax.ejb.Remote;

import com.klef.ep.models.Admin;
import com.klef.ep.models.User;

@Remote
public interface AdminService
{
  //public String addUser(User use);
  //public String updateUser(User use);
  public String deleteUser(int uid);
  public List<User> viewAllUsers();
  public Admin AdminLogin(String username,String pwd);
}