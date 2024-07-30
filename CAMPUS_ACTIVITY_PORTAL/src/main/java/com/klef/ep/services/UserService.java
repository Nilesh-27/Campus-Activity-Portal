package com.klef.ep.services;

import java.util.List;

import javax.ejb.Remote;

import com.klef.ep.models.User;

@Remote
public interface UserService
{
  public String addUser(User use);
  public String updateUser(User use);
  //public String deleteUser(int uid);
  //public List<User> viewAllUsers();
  public User UserLogin(String email,String pwd);
}