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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class DashboardController {
	@Autowired
	IHPIrestInt iHpiService;
	 
	
	org.json.simple.JSONObject delhijsons = null;
	
	
	@Autowired
	 IUserService iUserService;
	
	@Autowired
	IClientService iClientService;
	
	/*@Autowired
	IHPIrestInt iHpiService;
	*/
	
	 @RequestMapping("dashboard")

	 public String dashboard(@ModelAttribute User user,Model model,HttpServletRequest req)
	 {
		 HttpSession session=req.getSession();
			
			session.getAttribute("user");
			
			if(user==null)
			{
				return "redirect:logout";
				
			}
			
			

				 //{"_09_2011":"124.8","_09_2013":"215.7","_09_2012":"183.2","_12_2011":"136.7","_03_2012":"158.2","_06_2013":"214.8","_03_2013":"213.1","_06_2011":"126.8","particulars":"Delhi","_06_2012":"177.3","_12_2012":"200.7"}
				//System.out.println("delhijsons cons"+delhijsons.toString());
				
			//model.addAttribute("hpidelhi",responsejson);
				
			 
			/*List<Client> clients=iClientService.getAllClient(0);
			System.out.println(clients.size());
			model.addAttribute("clients", clients);*/
	  
	  
	 return "dashboard";
	  
	 }
	
	

}
