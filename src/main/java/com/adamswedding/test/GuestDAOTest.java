package com.adamswedding.test;

import static org.junit.Assert.*;

import org.apache.commons.lang3.StringUtils;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.adamswedding.dao.GuestDAO;
import com.adamswedding.entity.Guest;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:adamsweddingContext.xml"})
@Transactional
public class GuestDAOTest {
	
	@Autowired
	private GuestDAO dao;

	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void GetGuestByIdTest() {
		Guest testGuest = dao.getGuestById(1);
		assertNotNull(testGuest);
		assertTrue(StringUtils.isEmpty(testGuest.getFirstName()));
		assertTrue(StringUtils.isEmpty(testGuest.getLastName()));
	}

}
