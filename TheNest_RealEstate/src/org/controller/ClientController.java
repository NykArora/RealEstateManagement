package org.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.dto.Client;
import org.dto.User;
import org.dto.UserRole;
import org.service.IClientService;
import org.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.util.PasswordHasher;


@Controller
public class ClientController {
	
	@Autowired
	IClientService iClientService;
	
	
	@Autowired
	IUserService iUserService;
	
	
	@RequestMapping("Clientlist")
    public  String showAllClient(Model model,HttpServletRequest req){
		
        HttpSession session=req.getSession();
		
		User user=(User) session.getAttribute("user");
		if(user==null)
		{
			return "redirect:logout";
			
		}	
		
	      
			    List<Client> clients=iClientService.getAllClient(0);
			     
			    System.out.println(clients.size());
				model.addAttribute("clients", clients);  
		  
		 
		 
		
		 return "clientlist";
	}
	
	
	@RequestMapping(value="createclient")
	public String openCreatePatient(Model model ,HttpServletRequest req){
	/*	HttpSession session=req.getSession(true);
		User user=(User) session.getAttribute("user");*/

		HttpSession session=req.getSession();
		
		User user=(User) session.getAttribute("user");
		if(user==null)
		{
			return "redirect:logout";
			
		}
		System.out.println(user.getFirstName());
		model.addAttribute("client", new Client());
	
		return "createclient";
	}
	
	@RequestMapping(value="saveclient")
	public String savePatient(@ModelAttribute Client client, BindingResult result, Model model,HttpServletRequest req){

		
		
		
		HttpSession session=req.getSession();
		
		User user=(User) session.getAttribute("user");
		if(user==null)
		{
			return "redirect:logout";
			
		}
		
		
		  client=iClientService.saveClient(client);
		  
	
		
		return "redirect:Clientlist";
	}
	
	@RequestMapping(value="editClient")
	public String editUser(@RequestParam int id, Model model){
		
		Client client = iClientService.getClientById(id);
		
		model.addAttribute("client",client);
		
		return "editclient";
	}
	
	
	@RequestMapping(value="updateclient")
	public String updateClient(@ModelAttribute Client client, final BindingResult result, HttpServletRequest request)
	{
		iClientService.updateClient(client);
		
		return "redirect:Clientlist";
	}
	
	

}
