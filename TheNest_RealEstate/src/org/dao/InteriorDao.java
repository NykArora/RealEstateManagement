package org.dao;

import org.dto.InteriorDesign;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.util.HibernateSessionFactory;

@Repository
public class InteriorDao  implements IInterior{
	
	
	
	@Autowired
	private HibernateSessionFactory  factory;
		

	@Transactional
	public void saveInterior(InteriorDesign interiordesign) {
		// TODO Auto-generated method stub
		Session session=factory.getSession();

		session.save(interiordesign);
	}
	
	

}
