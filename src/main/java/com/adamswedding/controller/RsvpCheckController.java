package com.adamswedding.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.math.NumberUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.adamswedding.dao.GuestDAO;
import com.adamswedding.entity.Guest;
import com.mysql.fabric.xmlrpc.base.Array;

@Controller
public class RsvpCheckController {
	
	@Autowired
	private GuestDAO dao;

	@RequestMapping(value="/action/validate",  method=RequestMethod.POST)
	public String validateRsvpd(HttpServletRequest request, ModelMap model,
								@ModelAttribute("Guest") Guest guest,BindingResult result) 
	{
		String view = "rsvp";
		HttpSession session = request.getSession();
		
		try {
			if (!session.getAttribute("isRsvpd").toString().equalsIgnoreCase("yes")) {
				//Not RSVP'd
				guest = dao.getGuestByName(guest.getFirstName(), guest.getLastName());
				if (!StringUtils.isEmpty(guest.getFirstName()) && !StringUtils.isEmpty(guest.getLastName()) && guest.getComing() > -1) {
				
					if (guest.getPlusOne() == 1) {
						model.addAttribute("guestPlusOne", true);
					} else {
						model.addAttribute("guestPlusOne", false);
					}
					
					if (guest.getRsvpd() != 1) {
						session.setAttribute("isRsvpd", "no");
						System.out.println("not rsvpd");
					} else {
						view = "home";
						session.setAttribute("isRsvpd", "yes");
						System.out.println("is rsvpd");
					} 
					
					model.addAttribute("guest", guest);
					
				}else {
					view = "login";
					session.setAttribute("isRsvpd", "no");
				}
				
			}else {
				view = "home";
				session.setAttribute("isRsvpd", "no");
			}
		
		} catch (Exception e) {
			view = "login";
			session.setAttribute("isRsvpd", "no");
			e.printStackTrace();
		}
		
		if (view.equalsIgnoreCase("login")) {
			model.addAttribute("error", true);
			model.addAttribute(new Guest());
		}
		
		System.out.println("Before ending model view = " + "rsvp");

		return view;
	}
	
	@RequestMapping("/rsvp")
	public String showRSVP(){
		return "rsvp";
	}
	
	@RequestMapping(value="/action/submit",  method=RequestMethod.POST)
	public String submitRsvpd(HttpServletRequest request, ModelMap model,
			@ModelAttribute("Guest") Guest guest,BindingResult result) 
	{
		String view = "home";
		HttpSession session = request.getSession();
		
		System.out.println("In submit controller, given id = " + guest.getId());
		System.out.println("In submit controller, given firstname = " + guest.getFirstName());
		System.out.println("In submit controller, given lastname = " + guest.getLastName());
		System.out.println("In submit controller, given coming = " + guest.getComing());
		System.out.println("In submit controller, given email = " + guest.getEmail());
		System.out.println("In submit controller, given comments = " + guest.getComments());
		
		try {
			
			if (!session.getAttribute("isRsvpd").toString().equalsIgnoreCase("yes")) {
				
				if (!StringUtils.isEmpty(guest.getFirstName()) && !StringUtils.isEmpty(guest.getLastName()) && guest.getComing() > -1) {
					//Build guest
					if(dao.create(guest)) {
						System.out.println("Added/Updated Guest: " + guest.getFirstName() + " " + guest.getLastName() + " has been created and RSVP'd");
					}
					
				}else {
					view = "rsvp";
					model.addAttribute("error", true);
					System.out.println("In submit controller = fields were empty");
				}
				
				if (guest.getRsvpd() != 1) {
					session.setAttribute("isRsvpd", "no");
					System.out.println("not rsvpd");
				}else {
					session.setAttribute("isRsvpd", "yes");
					System.out.println("is rsvpd");
				}
				
			}else {
				//Is RSVP'd
			}
			
		} catch (Exception e) {
			view = "rsvp";
			model.addAttribute("error", true);
			session.setAttribute("isRsvpd", "no");
			e.printStackTrace();
		}
		
		System.out.println("Before ending model view = " + view);

		return view;
	}
	
}
