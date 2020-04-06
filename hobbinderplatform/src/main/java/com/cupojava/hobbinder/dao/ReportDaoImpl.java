package com.cupojava.hobbinder.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.cupojava.hobbinder.model.Post;
import com.cupojava.hobbinder.model.Report;

@Repository
public class ReportDaoImpl implements ReportDao {

	NamedParameterJdbcTemplate namedParameterJdbcTemplate;
	
	@Autowired
	public void setNamedParameterJdbcTemplate(NamedParameterJdbcTemplate namedParameterJdbcTemplate) {
		this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
	}

	public Report findReportByCode(int reportID) {
		
		Map<String, Object> params = new HashMap<String, Object>();
        params.put("id", reportID);
        
		String sql = "SELECT * FROM REPORTS WHERE ReportID=:id";
		
		Report result = namedParameterJdbcTemplate.queryForObject(sql, params, new ReportMapper());
        
        return result;
	}

	public List<Report> findReportByTitle(String postTitle) {
		Map<String, Object> params = new HashMap<String, Object>();
        params.put("title", postTitle);	
        
        String sql = "SELECT * FROM REPORTS WHERE title =:postTitle";
        List<Report> results = namedParameterJdbcTemplate.query(sql, params, new ReportMapper());
        
        return results;
	}
	
//	public List<Post> findRandomPosts(int ID) {
//		Map<String, Object> params = new HashMap<String, Object>();
//        params.put("id", ID);	
//        
//        String sql = "SELECT * FROM POSTS";
//        List<Post> results = namedParameterJdbcTemplate.query(sql, params, new PostMapper());
//        
//        return results;
//	}
	
	private static final class ReportMapper implements RowMapper<Report> {

		public Report mapRow(ResultSet rs, int rowNum) throws SQLException {
			Report report = new Report();
			report.setMessage(rs.getString("Message"));
			report.setPostTitle(rs.getString("Title"));
			return report;
		}
	}

	public int createReport(String message, String title) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("Message", message);
		params.put("postTitle", title);

		String sql = "INSERT INTO REPORTS(postTitle, Message) VALUES(:postTitle, :Message)";
//		System.out.println(sql+", "+title+", "+content+", "+date+", "+communityID+", "+authorID);
//		return 1;
		
		return namedParameterJdbcTemplate.update(sql, params);
	}
	
}
