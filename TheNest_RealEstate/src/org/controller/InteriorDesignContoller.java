package org.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.dto.InteriorDesign;

@Controller
public class InteriorDesignContoller {
	
	
	@RequestMapping("interiordesign")
	public String InteriorDesign(@ModelAttribute InteriorDesign interiordesign,Model model){
		
		
		interiordesign= new InteriorDesign();

		
		 model.addAttribute("interiordesign", interiordesign);
	
		
		return "interiordesign";
		
		
		
	}
	
}
