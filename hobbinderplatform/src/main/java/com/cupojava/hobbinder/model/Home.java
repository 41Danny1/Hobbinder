package com.cupojava.hobbinder.model;

public class Home {

	private String title;
	private String content;
	private String date;
	private int communityID;
	private int authorID;
	private String render;
	private String author;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getCommunityID() {
		return communityID;
	}
	public void setCommunityID(int communityID) {
		this.communityID = communityID;
	}
	public int getAuthorID() {
		return authorID;
	}
	public void setAuthorID(int authorID) {
		this.authorID = authorID;
		
	}
	
	public String render() {
		String render;
		render = "<div class='row postRow'> <!-- A post -->\n" + 
				"	    <div class='col-12'>\n" + 
				"	      <div class='row'> \n" + 
				"		<div class='col-sm-8'>\n" + 
				"		  <div>\n" + 
				"		    <div class='previewImg'>\n" + 
				"		      IMG\n" + 
				"		    </div>\n" + 
				"		    <a href='#' class='postLinks'><b>\n" + 
				title+ 
				"		    </b></a>\n" + 
				"		    +N <!-- # likes -->\n" + 
				"		    <br>\n" + 
				"		    <a href='#' class='postLinks'><i class='fas fa-chevron-down'></i></a>\n" + 
				"		    <a href='#' class='postLinks'>\n" + 
				"		      "+authorID+"\n" + 
				"		    </a>\n" + 
				"		    - "+date+", TIME\n" + 
				"		  </div>\n" + 
				"		</div>\n" + 
				"		<div class='col-sm-4 lastPost'>\n" + 
				"		  Last post: DATE, TIME<br>\n" + 
				"		  By: <a href='#' class='postLinks'>USER</a>\n" + 
				"		</div>\n" + 
				"	      </div>\n" + 
				"	      <div class='row noPadding'> <!-- Preview content -->\n" + 
				"		<div class='col-12 noPadding'>\n" + 
				"		  <div class='previewToolbar'> <!-- Preview toolbar -->\n" + 
				"		    <a href='#' class=''><i class='far fa-thumbs-up'></i> Like</a>&nbsp&nbsp\n" + 
				"		    <a href='#' class=''><i class='far fa-bookmark'></i> Save</a>&nbsp&nbsp\n" + 
				"		    <a href='#' class=''><i class='fas fa-share'></i> Share</a>&nbsp&nbsp\n" + 
				"		    <a href='#' class=''><i class='fas fa-flag'></i> Report</a>\n" + 
				"		  </div> <!-- End of preview toolbar -->\n" + 
				"		  <div class='previewBox'>\n" + 
				"		    <div style='width: 100%; padding: 5px; background-color: #EEEEEE;'>\n" +
				content+
				"		    </div>\n" + 
				"		  </div>\n" + 
				"		</div>\n" + 
				"	      </div> <!-- End of preview content -->\n" + 
				"	    </div>\n" + 
				"	  </div> <!-- End of A post -->";
		return render;
	}
	
}
