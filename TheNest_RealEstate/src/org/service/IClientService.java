package org.service;

import java.util.List;

import org.dto.Client;

public interface IClientService {

	Client saveClient(Client client);

   List<Client> getAllClient(int status);

    Client getClientById(int id) ;

	void updateClient(Client client);
	}


