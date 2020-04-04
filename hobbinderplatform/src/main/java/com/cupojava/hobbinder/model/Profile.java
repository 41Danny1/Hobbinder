package com.cupojava.hobbinder.model;

import java.util.List;

public class Profile {

	private String userName;
	private String firstName;
	private String lastName;
	private String description;

	private int numOfFollowers;
	private int numOfFollowing;
	private int numOfCommunities;
	
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	

	
	public int getNumOfFollowers() {
		return numOfFollowers;
	}

	public void setNumOfFollowers(int numOfFollowers) {
		this.numOfFollowers = numOfFollowers;
	}

	public int getNumOfFollowing() {
		return numOfFollowing;
	}

	public void setNumOfFollowing(int numOfFollowing) {
		this.numOfFollowing = numOfFollowing;
	}

	public int getNumOfCommunities() {
		return numOfCommunities;
	}

	public void setNumOfCommunities(int numOfCommunities) {
		this.numOfCommunities = numOfCommunities;
	}

	public String render(int id) {
		String render;
		render = "  <div class=\"rela-block container\">" + 
				"        <div class=\"rela-block profile-card\"><div class=\"profile-pic\" id=\"profile_pic\" style=\"background-image: url(resources/images/john.jpeg)\"></div>" + 
				"        <div class=\"rela-block profile-name-container\">\n" + 
			   "       <div class=\"rela-block user-name\" id=\"user_name\">" + firstName + "  " + lastName + "</div>@" +  userName + "\n" + 
				"        <div class=\"user_button\" style=\"padding-top:15px\";><button type=\"button\" class=\"btn btn-outline-secondary\" style=\"width:200px\" >Follow</button></div><div class=\"rela-block " + 
				"        user-desc\"id=\"user_description\"style=\"margin: 30px\">" + description + "</div></div>" + 
				"        		<div class=\"rela-block profile-card-stats\">" + 
				"        				<div class=\"floated " + 
				"        profile-stat works\" id=\"num_works\"><a href=\"url\">" + 
				"        		<font color=\"#f45200\">" + numOfCommunities + "</font></a><br></div>" + 
				"        				<div class=\"floated profile-stat followers" + 
				"        id=\"num_followers\"><a href=\"profile_followers?id=" + id + "\">" + 
				"        <font color=\"#f45200\">" + numOfFollowers + "</font></a><br>" + 
				"        </div><div class=\"floated profile-stat following\" id=\"num_following\">" + 
				"        <a href=\"profile_following?id=" + id + "\">" + 
				"        <font color=\"#f45200\">" + numOfFollowing + "</font></a><br></div></div></div>";
		
		return render;
	}
	
}
