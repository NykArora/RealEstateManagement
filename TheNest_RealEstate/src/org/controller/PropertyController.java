
package org.controller;

import org.dto.Property;
import org.service.IProperyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class PropertyController {
	
	
	@Autowired
	IProperyService iproperty;
    
	@RequestMapping("addproperty")
	public String addproperty(Model model){
		
	Property property= new Property();
			
	model.addAttribute("property",property);
	
     return "addproperty";
}
	
	
	@RequestMapping("saveproperty")
	public String saveproperty(Model model,@ModelAttribute Property property,final BindingResult result){
		
	iproperty.saveproperty(property);
	
	return "propertylist";
	
}
}