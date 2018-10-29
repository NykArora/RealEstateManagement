package org.service;

import org.dao.IProperty;
import org.dto.Property;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class PropertyService implements IProperyService {
	
	@Autowired
	
	IProperty iproperty;
	

	@Override
	public void saveproperty(Property property) {
		
		iproperty.saveproperty(property);
			// TODO Auto-generated method stub
		
	}
	
	
	
	
	

}
