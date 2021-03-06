package com.cupojava.hobbinder.model;

public class UsersHobbinder {
	
	private Long UserID;
	private String FirstName;
	private String LastName;
	private String UserName;
	private String Gender;
	private String Email;
	private String Password;
	private String Country;
	private String UserImage;
	private String UserDescription;
	
	public Long getUserID() {
		return UserID;
	}
	public void setUserID(Long userID) {
		UserID = userID;
	}
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}
	public String getUserImage() {
		return UserImage;
	}
	public void setUserImage(String userImage) {
		UserImage = userImage;
	}
	public String getUserDescription() {
		return UserDescription;
	}
	public void setUserDescription(String userDescription) {
		UserDescription = userDescription;
	}
	
	public String myRender(int id, String userName) {
		String render;
		
		render = "  <div class=\"top_follow\">\n" + 
				"                <p><a href=\"profile?id=" + id + "\"><font color=\"#f45200\"></font>@" + userName + "</font></a></p>\n" + 
				"                <font color=\"#f45200\">Followers</font></a>/<a href=\"profile_following?id=" + id + "\">Following</a>\n" + 
				"              </div>";
		
		return render;
	}
	
	public String myRender2(int id, String userName) {
		String render;
		
		render = " <div class=\"top_follow\">\n" + 
				"                <p><a href=\"profile?id=" + id +  "\"><font color=\"#f45200\"></font>@" + userName + "</font></a></p>\n" + 
				"                <a href=\"profile_followers?id=" + id + "\">Followers</a>/<font color=\"#f45200\">Following</font>\n" + 
				"              </div>";
		
		return render;
	}
	
}