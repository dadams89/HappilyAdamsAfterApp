package com.adamswedding.dao;

import com.adamswedding.entity.Guest;

public interface GuestDAO {

	public Guest getGuestById(int id);
	
	public Guest getGuestByEmail(String email);

	public Guest getGuestByName(String firstName, String lastName);

	boolean create(Guest guest);
	
}
