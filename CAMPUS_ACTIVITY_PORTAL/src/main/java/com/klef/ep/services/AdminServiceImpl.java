 package com.klef.ep.services;

import java.util.List;


import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.klef.ep.models.Admin;
import com.klef.ep.models.User;

@Stateless
@TransactionManagement(TransactionManagementType.BEAN)
public class AdminServiceImpl  implements AdminService
{
  public String deleteUser(int uid) 
  {
         EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
         EntityManager em = emf.createEntityManager();
         
         em.getTransaction().begin();
         User u = em.find(User.class, uid); // fetching object based on ID
         em.remove(u);
         em.getTransaction().commit();
         
         em.close();
         emf.close();
      
      return "Record Deleted Successfully";
  }

  public List<User> viewAllUsers() 
  {
	  	 EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
         EntityManager em = emf.createEntityManager();
          
         em.getTransaction().begin();
         
         Query qry = em.createQuery("   select u from User u "); // e is an alias of Employee class
         List<User> userlist = qry.getResultList();
         
         em.close();
         emf.close();
         
         return userlist;
  }
  
  public Admin AdminLogin(String username, String pwd) 
  {
         EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
         EntityManager em = emf.createEntityManager();
          
         em.getTransaction().begin();
         
         Query qry = em.createQuery("  select u from Admin u where username=? and password=?   "); // atmost one object (0 or 1)
       
         qry.setParameter(1, username);
         qry.setParameter(2, pwd);
       
         Admin adm = null;
       
       if(qry.getResultList().size() > 0) 
       {
            adm = (Admin) qry.getSingleResult();
       }
       
       em.close();
       emf.close();
     
       return adm;
  }





}