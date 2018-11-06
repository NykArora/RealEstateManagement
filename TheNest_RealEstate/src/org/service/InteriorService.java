package org.service;

import java.util.Date;

import org.dao.IInterior;
import org.dao.IUser;
import org.dto.InteriorDesign;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.util.CamelCase;
import org.util.PasswordHasher;




@Service
public class InteriorService implements IInteriorService {
	
	
	
    @Autowired
	IInterior  iinterior;
	
	
	
	
	@Override
	public void getinteriorDesign(InteriorDesign interiordesign) {
		// TODO Auto-generated method stub
		
		interiordesign.setFirstName(CamelCase.toCamelCase(interiordesign.getFirstName()));
		interiordesign.setLastName(CamelCase.toCamelCase(interiordesign.getLastName()));
		String cryptedPassword = new PasswordHasher().encode(interiordesign.getPassword());
		interiordesign.setPassword(cryptedPassword);
		iinterior.saveInterior(interiordesign);
		
		
	}

}
