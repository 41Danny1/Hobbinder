package com.cupojava.hobbinder.model;

public class Follow {

	private String userName;
	private String firstName;
	private String lastName;
	private String description;
	
	
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

	
	public String render() {
		String render;
		render = "<div id=\"follower_table\">\n" + 
				"         <div class=\"row\">\n" + 
				"               <div class=\"col-2\">\n" + 
				"                      <a href=\"\" ><img src=\"resources/images/profile.png\"alt=\"profile_image\" width=\"120px\" height=\"120px\"></a>\n" + 
				"                  </div>\n" + 
				"                  <div class=\"col-8\">\n" + 
				"                   <a href=\"\"><p class=\"user_name\">" + firstName + " " + lastName + "</p></a>\n" + 
				"                   <p class=\"user_id\">@" + userName + "</p> \n" + 
				"                   <p class=\" + \">" + description + "</p>\n" + 
				"                  </div>  \n" + 
				"                </div>  \n" + 
				"              </div>";
		
		return render;
	}
	
}
