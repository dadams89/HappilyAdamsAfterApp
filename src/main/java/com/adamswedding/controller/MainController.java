package com.adamswedding.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.adamswedding.entity.Guest;

import groovy.ui.Console;

@Controller
public class MainController {
	
	@RequestMapping("/*")
	public String defaultHandler(){
		return "login";
	}
	
	@RequestMapping("/")
	public String defaultHandlerTwo(){
		return "home";
	}
	
	@RequestMapping("/check")
	public ModelAndView checkRsvp(){
		return new ModelAndView("login", "command", new Guest());
	}
	
	@RequestMapping("/photos")
	public String showPhotos(){
		System.out.println("in showPhotos");
		return "photos";
	}
	
	@RequestMapping("/home")
	public String showHome(){
		System.out.println("in showHome");
		return "home";
	}
	
	@RequestMapping("/wedding-party")
	public String showWeddingParty(){
	return "wedding-party";
	}
	
	@RequestMapping("/our-story")
	public String showOurStory(){
	return "our-story";
	}
	
	@RequestMapping("/registry")
	public String showRegistry(){
	return "registry";
	}
	
	@RequestMapping("/details")
	public String showDetails(){
	return "details";
	}
	
	@RequestMapping("/accommodations")
	public String showAccomodations(){
	return "accommodations";
	}

}
