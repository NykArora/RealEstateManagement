package org.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.dto.User;
import org.dto.UserRole;
import org.service.IHPIrestInt;
import org.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.json.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.json.*;

import org.util.PasswordHasher;

@Controller
public class UserController {
	

	 @Autowired
	 IUserService iUserService;
	 
		
	@Autowired
	IHPIrestInt iHpiService;
	 
	
	org.json.simple.JSONObject delhijsons = null;
	
     @RequestMapping("login")
     
		public String login(@ModelAttribute User user,Model model,HttpServletRequest request)
		{ 
				
		 if(user.getUsername()==null)
		 {
				model.addAttribute("user",user);
				return "login";
		}
		
		 else{
			user= iUserService.userLogin(user);
			 
			 if(user==null)
			 {
				 model.addAttribute("error","The username and password you entered did not match our records");
				
				 return "login";
			 }
			 else
			 {
				
			
			 String cryptedPassword = new PasswordHasher().encode(user.getPassword());
			 user.setPassword(cryptedPassword);
			 System.out.println(cryptedPassword);
			 HttpSession httpSession=request.getSession(true);
			 httpSession.setAttribute("user", user);
			 
			 if(user.getUserRole().getUserRoleId()==1)
			 {
				 
			 /*delhijsons = iHpiService.getHPIJsonDelhi();

				 //{"_09_2011":"124.8","_09_2013":"215.7","_09_2012":"183.2","_12_2011":"136.7","_03_2012":"158.2","_06_2013":"214.8","_03_2013":"213.1","_06_2011":"126.8","particulars":"Delhi","_06_2012":"177.3","_12_2012":"200.7"}
				System.out.println("delhijsons cons"+delhijsons.toString());*/
				
			//model.addAttribute("hpidelhi",responsejson);
				
					return "redirect:dashboard";
			 }
			 
			 else  if(user.getUserRole().getUserRoleId()==3)
			 {
				 return "redirect:Clientlist";
				 
				 
			 }
			 else if(user.getUserRole().getUserRoleId()==4)
			 {
				 return "redirect:patient_panding_for_consent";
				 
				 
			 }
			 
			 else
			 {
				 return "redirect:login";
				 
			 }
				
			 }
		 }
}
	 
	@RequestMapping(value="createuser")
	public String openCreateUser(Model model,HttpServletRequest req)
	{
		HttpSession session=req.getSession();
		
		User user=(User) session.getAttribute("user");
		
		if(user==null)
		{
			return "redirect:logout";
			
		}
	   
		List<UserRole> userRoles=iUserService.getUserRoles();
		
		//userRoles.add(0, new UserRole("Select"));
		model.addAttribute("userRoles", userRoles);
		model.addAttribute("user", new User());

		return "userenrollment";
	}
	
	
	@RequestMapping(value="enrollment")
	 public String enrollment(@ModelAttribute User user,final BindingResult result,Model model)
	 {
		//userValidetor.validate(user, result);
		if(result.hasErrors())
		{
			/*model.addAttribute("user", user);
			List<UserRole> userRoles=iUserService.getUserRoles();
			
			System.out.println(userRoles.size());
			userRoles.add(0, new UserRole(-1,"Select"));
			
			//System.out.println(userRoles.get(0).getUserRoleName());
			
			model.addAttribute("userRoles", userRoles);
			
			//userRoles.clear();
*/			return "redirect:createuser";
		}
		
	  iUserService.saveUser(user);
	  
	  return "redirect:userlist";
	 }
	
	
	@RequestMapping(value="userlist")
	public String userList(Model model,HttpServletRequest req)
	{
		HttpSession session=req.getSession();
		
		User user=(User) session.getAttribute("user");
		if(user==null)
		{
			return "redirect:logout";
			
		}
		
		List<User> users=iUserService.getUserList();
		model.addAttribute("users", users);
		return "userlist";
	}
	
	
	@RequestMapping(value="edit")
	public String editUser(@RequestParam int id, Model model){
		User user=iUserService.getUserById(id);
		List<UserRole> userRoles=iUserService.getUserRoles();
		model.addAttribute("user",user);
		model.addAttribute("userRoles", userRoles);
		return "edit";
	}
	
	
	@RequestMapping(value="updateUser")
	public String updateUser(@ModelAttribute User user, final BindingResult result, HttpServletRequest request)
	{
		if(user.getPassword()==null)
		{
			System.out.println("null");
			
			HttpSession session=request.getSession();
			
			User user2=(User)session.getAttribute("user");
			
			user.setPassword(user2.getPassword());
		}
		else if(user.getPassword().isEmpty())
		{
			HttpSession session=request.getSession();
			User user2=(User)session.getAttribute("user");
			user.setPassword(user2.getPassword());
		}
	else{
			System.out.println("pass");
			 String cryptedPassword = new PasswordHasher().encode(user.getPassword());
				user.setPassword(cryptedPassword);
		}
		
		iUserService.updateUser(user);
		return "redirect:userlist";
	}
	

	@RequestMapping("logout")
	public String logout(HttpServletRequest req)
	{
		System.out.println("logout");
		HttpSession session=req.getSession();
		session.invalidate();
		
	 return "redirect:login";
	}	
}
	
