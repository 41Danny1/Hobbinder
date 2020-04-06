package com.cupojava.hobbinder.dao;

import java.util.List;

import com.cupojava.hobbinder.model.Report;

public interface ReportDao {
	Report findReportByCode(int reportID);
	List<Report> findReportByTitle(String postTitle);
	int createReport(String message, String postTitle);
	//List<Post> findRandomPosts(int i);
}
