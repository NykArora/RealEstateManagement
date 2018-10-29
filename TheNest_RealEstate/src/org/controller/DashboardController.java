package org.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.dto.Client;
import org.dto.User;
import org.service.IClientService;
import org.service.IHPIrestInt;
import org.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DashboardController {
	
	
	
	@Autowired
	 IUserService iUserService;
	
	@Autowired
	IClientService iClientService;
	
	@Autowired
	IHPIrestInt iHpiService;
	
	
	 @RequestMapping("dashboard")
	 public String dashboard(Model model,HttpServletRequest req)
	 {
		 HttpSession session=req.getSession();
			
			User user=(User) session.getAttribute("user");
			if(user==null)
			{
				return "redirect:logout";
				
			}
			/*List<Client> clients=iClientService.getAllClient(0);
			System.out.println(clients.size());
			model.addAttribute("clients", clients);*/
	  
	  
	 return "dashboard";
	  
	 }
	
	

}
