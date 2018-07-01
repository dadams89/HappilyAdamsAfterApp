package com.adamswedding.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.adamswedding.entity.Guest;

@EnableTransactionManagement
@Repository
@Transactional
public class GuestDaoImpl implements GuestDAO {
	
	private Logger logger = LogManager.getLogger(GuestDaoImpl.class);

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Guest getGuestById(int id) {
		
		Guest returnGuest = new Guest();
		
		try {
			Session session = sessionFactory.getCurrentSession();
			
			returnGuest = session.get(Guest.class, id);
			
			session.flush();

		} catch (HibernateException e) {
			logger.error("GuestDAO - Failed to get guest by id");
			e.printStackTrace();
		}
		
		if (returnGuest == null) {
			logger.error("GuestDAO - Failed to get Guest by ID, returning null");
			return null;
		}else {
			return returnGuest;
		}
	}
	
	@Override
	public Guest getGuestByEmail(String email) {
		
		Guest returnGuest = new Guest();
		
		try {
			Session session = sessionFactory.getCurrentSession();
			List<Guest> guests = new ArrayList<Guest>();
			
			if (!StringUtils.isEmpty(email)) {
				guests = session.createQuery("from Guest g where g.email='" + email + "'").list();
			}else {
				logger.error("GuestDAO - email is empty, not able to get guest");
			}
			
			if(!guests.isEmpty() && guests.get(0) != null) {
				returnGuest = guests.get(0);
			}else {
				logger.error("GuestDAO - Not able to assign guest object");
			}
			
			session.flush();

		} catch (HibernateException e) {
			logger.error("GuestDAO - Failed to get guest by id");
			e.printStackTrace();
		}
		
		if (returnGuest == null) {
			logger.error("GuestDAO - Failed to get Guest by ID, returning null");
			return null;
		}else {
			return returnGuest;
		}
	}
	
	@Override
	public Guest getGuestByName(String firstName, String lastName) {
		
		Guest returnGuest = null;
		
		try {
			Session session = sessionFactory.getCurrentSession();
			List<Guest> guests = new ArrayList<Guest>();
			
			if (!StringUtils.isEmpty(firstName) && !StringUtils.isEmpty(lastName)) {
				guests = session.createQuery("from Guest g where g.firstName='" + firstName + "' and g.lastName='" + lastName + "'").list();
			}else {
				logger.error("GuestDAO - email is empty, not able to get guest");
			}
			
			if(!guests.isEmpty() && guests.get(0) != null) {
				returnGuest = guests.get(0);
			}else {
				logger.error("GuestDAO - Not able to assign guest object");
			}
			
			session.flush();

		} catch (HibernateException e) {
			logger.error("GuestDAO - Failed to get guest by id");
			e.printStackTrace();
		}
		
		if (returnGuest == null) {
			logger.error("GuestDAO - Failed to get Guest by ID, returning null");
			return null;
		}else {
			return returnGuest;
		}
	}

	@Override
	public boolean create(Guest guest) {
		boolean result = false;
		
		//Update record
		try {
			Session session = sessionFactory.getCurrentSession();

			session.saveOrUpdate(guest);
			
			session.flush();
			
			result = true;
		} catch (HibernateException e) {
			logger.error("GuestDAO - Failed to create record for " + guest.getFirstName() + " " + guest.getLastName());
			e.printStackTrace();
		}
		
		return result;
	}

}
