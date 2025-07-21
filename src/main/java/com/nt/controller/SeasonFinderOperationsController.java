package com.nt.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nt.service.ISeasonFinderService;

@Controller
public class SeasonFinderOperationsController{
	@Autowired
	private ISeasonFinderService service;
		
	
	@RequestMapping("/")
	public String showHome() {
		return "welcome";
	}
	
	@RequestMapping("/season")
	public String showSeason(Map<String,Object> map) {
		String result = service.findSeason();
		map.put("resultMsg", result);
		return "display";
	}
}
/*
 * @RequestMapping("/season") pubic String showSeason(Map<String,Object> map) {
 * 
 * String result = service.findSeason(); map.put("resulMSg", result); return
 * "display";
 * 
 * } }
 */
