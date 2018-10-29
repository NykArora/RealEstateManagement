package org.dao;

import java.util.Date;
import java.util.List;

import org.dto.Client;
import org.dto.User;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.util.HibernateSessionFactory;

@Repository
public class ClientDao implements IClient{

	@Autowired
	private HibernateSessionFactory  factory;
	
	
	@Transactional
	public Client saveClient(Client patient) {
		Session session=factory.getSession();
		patient.setEnrollment(new Date());
	
	    session.save(patient);
		return patient;
		
	}



	@Transactional
	public List<Client> getAllClient(int status) {
		Session session=factory.getSession();
		
		Criteria criteria=session.createCriteria(Client.class,"type_of_transaction");
		
		
	
		//Criterion sale=Restrictions.eq("sale", client.getType_of_transaction());
		
		
		/*if(status==1)
		{
			Criterion patientStatus=Restrictions.eq("status", status);
		
			
			System.out.println( new Date());
			
			criteria.add(patientStatus);
	}
		else
			
		{
			Criterion patientStatus=Restrictions.ne("status", 1);
			criteria.add(patientStatus);
			
		}*/
		
		
		
	    /*criteria=criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);*/
		List<Client> clients =criteria.list();
		System.out.println("hello world");
	    return clients;
	}
	
	@Transactional
	public Client getClientrById(int id) {
		Session session=factory.getSession();
		Client client=(Client) session.get(Client.class, id);
		return client;
	}



	@Transactional
	public void updateClient(Client client) {
		
	Session session=factory.getSession();
		
	client.setUpdateDate(new Date());
		session.update(client);
		
	}



	
	
	
	
}
