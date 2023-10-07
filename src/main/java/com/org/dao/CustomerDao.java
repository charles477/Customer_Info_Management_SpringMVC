package com.org.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.org.dto.Customer;




public class CustomerDao 
{
	static EntityManagerFactory emf= Persistence.createEntityManagerFactory("charles");
	
	public static boolean saveCustomer(Customer c)
	{
		try {
			EntityManager em= emf.createEntityManager();
			EntityTransaction et= em.getTransaction();
			et.begin();
			em.persist(c);
			et.commit();
			return true;
		}catch (Exception ex) {
			ex.printStackTrace();
		}
		return false;
	}
	public static List<Customer> getAllEmployees(){
		EntityManager em= emf.createEntityManager();
		Query q= em.createQuery("Select e FROM Customer e");
		return q.getResultList();
		
	}

	
	public static boolean updateCustomer(Customer c) {
		try {
			EntityManager em= emf.createEntityManager();
			EntityTransaction et= em.getTransaction();
			et.begin();
			em.merge(c);
			et.commit();
			return true;
		}catch (Exception ex) {
			ex.printStackTrace();
		}
		return false;
	}
	
	public static boolean deleteCustomer(int id) {
		EntityManagerFactory emf= Persistence.createEntityManagerFactory("charles");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et= em.getTransaction();
		Customer c= em.find(Customer.class, id);
		if(c==null)
			return false;
		else {
		et.begin();
		em.remove(c);
		et.commit();
		return true;
		}
	}
	public static Customer findbyId(int id)
	{
		EntityManagerFactory emf= Persistence.createEntityManagerFactory("charles");
		EntityManager em = emf.createEntityManager();
		return em.find(Customer.class, id);
		
	}
	
	
}
