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

@Stateless
@TransactionManagement(TransactionManagementType.BEAN)
public class UserServiceImpl  implements UserService
{
  public String addUser(User use) 
  {
       EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
       EntityManager em = emf.createEntityManager();
       
       em.getTransaction().begin();
       em.persist(use);     // insert operation
       em.getTransaction().commit();
       
       em.close();
       emf.close();
       
       return "Record Inserted Successfully";
  }

  
  public String updateUser(User use) 
  {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
        EntityManager em = emf.createEntityManager();
        
        em.getTransaction().begin();
        User u = em.find(User.class, use.getId()); // fetching object based on ID
        u.setPassword(use.getPassword());
        u.setContactno(use.getContactno());
        
        em.getTransaction().commit();
        
        em.close();
        emf.close();
        
        return "Record Updated Successfully";
        
  }

  @Override 
  public User UserLogin(String email, String pwd) 
  {
     EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
         EntityManager em = emf.createEntityManager();
          
         em.getTransaction().begin();
         
         Query qry = em.createQuery("  select u from User u where email=? and password=?   "); // atmost one object (0 or 1)
       qry.setParameter(1, email);
       qry.setParameter(2, pwd);
       
       User use = null;
       
       if(qry.getResultList().size() > 0) 
       {
            use = (User) qry.getSingleResult();
       }
       
       em.close();
       emf.close();
     
       return use;
  }

}