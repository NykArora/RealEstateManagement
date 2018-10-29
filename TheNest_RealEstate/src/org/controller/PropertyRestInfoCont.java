package org.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

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


@RestController
public class PropertyRestInfoCont {
	

public String getHPIJsonDelhi() {
		
			RestTemplate restHPI = new RestTemplate();
			
			String res = restHPI.getForObject(RestUriConstants.GET_HPIS, String.class, 10);	
			
			System.out.println("res  -- "+res);
			return res;
}

}

