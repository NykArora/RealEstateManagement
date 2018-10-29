package org.dao;

import java.util.List;

import org.dto.Client;
import org.dto.User;

public interface IClient {

	public Client saveClient(Client client);

	public List<Client> getAllClient(int status);

    public Client getClientrById(int id);



	public void updateClient(Client client);

}
