package com.adamswedding.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.owasp.encoder.Encode;
import org.owasp.esapi.ESAPI;

@Entity
@Table(name="guest")
public class Guest {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="first_name")
	private String firstName;
	
	@Column(name="last_name")
	private String lastName;
	
	@Column(name="email")
	private String email;
	
	@Column(name="guest_names")
	private String guestNames;
	
	@Column(name="plus_one")
	private int plusOne;
	
	@Column(name="coming")
	private int coming;
	
	@Column(name="comments")
	private String comments;
	
	@Column(name="rsvpd")
	private int rsvpd;
	
	public Guest() {}

	public Guest(String firstName, String lastName, String email, String guestNames, int plusOne, int coming,
			String comments, int rsvpd) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.guestNames = guestNames;
		this.plusOne = plusOne;
		this.coming = coming;
		this.comments = comments;
		this.rsvpd = rsvpd;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = Encode.forHtml(firstName);
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = Encode.forHtml(lastName);
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = Encode.forHtml(email);
	}

	public String getGuestNames() {
		return guestNames;
	}

	public void setGuestNames(String guestNames) {
		this.guestNames = Encode.forHtml(guestNames);
	}

	public int getPlusOne() {
		return plusOne;
	}

	public void setPlusOne(int plusOne) {
		this.plusOne = plusOne;
	}

	public int getComing() {
		return coming;
	}

	public void setComing(int coming) {
		this.coming = coming;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = Encode.forHtml(comments);
	}

	public int getRsvpd() {
		return rsvpd;
	}

	public void setRsvpd(int rsvpd) {
		this.rsvpd = rsvpd;
	}

	
	
	
}
