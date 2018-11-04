package org.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.json.simple.JSONObject;
import org.service.IHPIrestInt;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import util.filter.RestUriConstants;

@RestController
public class PropertyRestInfoCont {
	
	@Autowired
	IHPIrestInt iHpiService;
	

org.json.simple.JSONObject delhijsons = null;
	
@RequestMapping(value="/list",method=RequestMethod.GET)
@ResponseBody
public  org.json.simple.JSONObject getHPIJsonDelhi() {
		
		delhijsons=iHpiService.getHPIJsonDelhi();
		
		System.out.println("delhijsons "+delhijsons);
	          
			return delhijsons;
}

}

