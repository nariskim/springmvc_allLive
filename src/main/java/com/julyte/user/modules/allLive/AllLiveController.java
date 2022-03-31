package com.julyte.user.modules.allLive;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AllLiveController {

	@Autowired
	AllLiveServiceImpl service;

	@RequestMapping(value = "/allLive/allLiveMain", method = RequestMethod.GET)
	public String allLiveMain() {

		return "/allLive/allLiveMain";
	}
	
	@RequestMapping(value = "/allLive/allLiveDetail", method = RequestMethod.GET)
	public String allLiveDetail() {
		
		return "/allLive/allLiveDetail";
	}
	
	@RequestMapping(value = "/allLive/allLiveOrder", method = RequestMethod.GET)
	public String allLiveOrder() {
		
		return "/allLive/allLiveOrder";
	}
}
