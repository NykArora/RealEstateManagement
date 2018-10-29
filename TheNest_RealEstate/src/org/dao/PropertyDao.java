package org.dao;

import org.dto.Property;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.util.HibernateSessionFactoryImpl;

@Repository
public class PropertyDao  implements IProperty{

	
@Autowired
private HibernateSessionFactoryImpl factory;
	
	
@Transactional	
public void saveproperty(Property property) {
	
	
	Session session =factory.getSession();
	
	session.save(property);
		// TODO Auto-generated method stub
	
	
	
	
	
	
		
	}	
	
}
