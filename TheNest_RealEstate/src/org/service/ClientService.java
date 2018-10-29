package org.service;

import java.util.List;

import org.dao.IClient;
import org.dto.Client;
import org.dto.User;
import org.dto.UserRole;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.util.CamelCase;

@Service
public class ClientService implements IClientService{

	
	@Autowired
	IClient iclient;
	
	
	@Override
	public Client saveClient(Client client) {
		
		System.out.println(1);
		client.setFirstName(CamelCase.toCamelCase(client.getFirstName()));
        
        System.out.println(2);
        client.setMiddelName(CamelCase.toCamelCase(client.getMiddelName()));
        System.out.println(3);
        client.setLastName(CamelCase.toCamelCase(client.getLastName()));
        System.out.println(4);
        client = iclient.saveClient(client);
		return client;
	}

	@Override
	public List<Client> getAllClient(int status) {
		List<Client> patients=iclient.getAllClient(status);
		
		return patients;
	}

	@Override
	public Client getClientById(int id) {
		try{
			Client client=iclient.getClientrById(id);
			return client;
		}
		catch (Exception e) {
			return null;
		}
	}

	@Override
	public void updateClient(Client client) {
		
		
			iclient.updateClient(client);
	
		
	}
	
	
	
}
