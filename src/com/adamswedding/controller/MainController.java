package com.adamswedding.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import groovy.ui.Console;

@Controller
public class MainController {
	
	@RequestMapping("/")
	public String showPage(){
		System.out.println("in showPage");
		return "rsvp";
	}
	
	@RequestMapping("/home")
	public String showHome(){
		System.out.println("in showHome");
	return "home";
	}
	
	@RequestMapping("/how-to-get-there")
	public String showHowTo(){
	return "how-to-get-there";
	}
	
	@RequestMapping("/rsvp")
	public String showRSVP(){
	return "rsvp";
	}
	
	@RequestMapping("/processrsvp")
	public String processRSVP(){
	return "rsvp";
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
