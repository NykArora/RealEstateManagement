package org.service;

import org.springframework.stereotype.Service;


import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import util.filter.RestUriConstants;


@Service
public class HPIRestService implements IHPIrestInt {

	@Override
	public org.json.simple.JSONObject getHPIJsonDelhi() {
		
		RestTemplate restHPI = new RestTemplate();
		
		String responsejson = restHPI.getForObject(RestUriConstants.GET_HPIS, String.class, 10);	

		System.out.println("responsejson"+responsejson);
		
		org.json.simple.JSONObject delhijsons = null;
		
		
		
		JSONParser parser = new JSONParser(); 
		
		try {
			
			org.json.simple.JSONObject json = (org.json.simple.JSONObject) parser.parse(responsejson);
			
			String title =	(String) json.get("title");
			
			org.json.simple.JSONArray jarr =	(org.json.simple.JSONArray) json.get("records");
		
			for (int i = 0; i < jarr.size(); i++) {
				
				org.json.simple.JSONObject jsons = (org.json.simple.JSONObject) jarr.get(i);
	        
				String jas = jarr.get(i).toString();
		
				if(jsons.get("particulars").equals("Delhi")) {
					
					delhijsons = jsons;
					System.out.println("delhijson"+delhijsons.toString());
				}
			}	
			
			} 
			catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return delhijsons;
		
	}
	
	

}
