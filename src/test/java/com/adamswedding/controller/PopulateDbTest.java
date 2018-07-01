package com.adamswedding.controller;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.adamswedding.dao.GuestDAO;
import com.adamswedding.entity.Guest;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:adamsweddingContext.xml"})
public class PopulateDbTest {
	
	@Autowired
	private GuestDAO dao;

	@Before
	public void setUp() throws Exception {
	}

	@Test
	@Ignore
	public void PopDb() {
		List<Guest> list = new ArrayList<>();
		Guest guest = new Guest();
		guest.setFirstName("TJ");
		guest.setLastName("King");
		guest.setComing(0);
		guest.setEmail("");
		guest.setGuestNames("");
		guest.setComments("");
		guest.setPlusOne(0);
		guest.setRsvpd(0);
		list.add(guest);
		
		Guest guest2 = new Guest();
		guest2.setFirstName("Edward");
		guest2.setLastName("Bowman");
		guest2.setComing(0);
		guest2.setEmail("");
		guest2.setGuestNames("");
		guest2.setComments("");
		guest2.setPlusOne(0);
		guest2.setRsvpd(0);
		list.add(guest2);
		
		Guest guest3 = new Guest();
		guest3.setFirstName("Emily");
		guest3.setLastName("Bowman");
		guest3.setComing(0);
		guest3.setEmail("");
		guest3.setGuestNames("");
		guest3.setComments("");
		guest3.setPlusOne(0);
		guest3.setRsvpd(0);
		list.add(guest3);
		
		Guest guest4 = new Guest();
		guest4.setFirstName("Michael");
		guest4.setLastName("Bowman");
		guest4.setComing(0);
		guest4.setEmail("");
		guest4.setGuestNames("");
		guest4.setComments("");
		guest4.setPlusOne(0);
		guest4.setRsvpd(0);
		list.add(guest4);
		
		Guest guest5 = new Guest();
		guest5.setFirstName("Lindsay");
		guest5.setLastName("Friedel");
		guest5.setComing(0);
		guest5.setEmail("");
		guest5.setGuestNames("");
		guest5.setComments("");
		guest5.setPlusOne(1);
		guest5.setRsvpd(0);
		list.add(guest5);
		
//		Guest guest6 = new Guest();
//		guest6.setFirstName("Savannah");
//		guest6.setLastName("Mills");
//		guest6.setComing(0);
//		guest6.setEmail("");
//		guest6.setGuestNames("");
//		guest6.setComments("");
//		guest6.setPlusOne(1);
//		guest6.setRsvpd(0);
//		list.add(guest6);
//		
//		Guest guest7 = new Guest();
//		guest7.setFirstName("Della");
//		guest7.setLastName("Mills");
//		guest7.setComing(0);
//		guest7.setEmail("");
//		guest7.setGuestNames("");
//		guest7.setComments("");
//		guest7.setPlusOne(1);
//		guest7.setRsvpd(0);
//		list.add(guest7);
//		
//		Guest guest8 = new Guest();
//		guest8.setFirstName("Gary");
//		guest8.setLastName("Skoch");
//		guest8.setComing(0);
//		guest8.setEmail("");
//		guest8.setGuestNames("");
//		guest8.setComments("");
//		guest8.setPlusOne(0);
//		guest8.setRsvpd(0);
//		list.add(guest8);
//		
//		Guest guest9 = new Guest();
//		guest9.setFirstName("Kelly");
//		guest9.setLastName("Skoch");
//		guest9.setComing(0);
//		guest9.setEmail("");
//		guest9.setGuestNames("");
//		guest9.setComments("");
//		guest9.setPlusOne(0);
//		guest9.setRsvpd(0);
//		list.add(guest9);
//		
//		Guest guest10 = new Guest();
//		guest10.setFirstName("Jessica");
//		guest10.setLastName("Vokac");
//		guest10.setComing(0);
//		guest10.setEmail("");
//		guest10.setGuestNames("");
//		guest10.setComments("");
//		guest10.setPlusOne(0);
//		guest10.setRsvpd(0);
//		list.add(guest10);
		
		for (Guest guester : list) {
			assertTrue(dao.create(guester));
		}
	}

}
