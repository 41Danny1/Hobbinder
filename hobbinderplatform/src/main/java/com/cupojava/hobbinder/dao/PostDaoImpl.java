package com.cupojava.hobbinder.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.cupojava.hobbinder.model.Post;

@Repository
public class PostDaoImpl implements PostDao {

	NamedParameterJdbcTemplate namedParameterJdbcTemplate;
	
	@Autowired
	public void setNamedParameterJdbcTemplate(NamedParameterJdbcTemplate namedParameterJdbcTemplate) {
		this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
	}

	public Post findPostByCode(int postID) {
		
		Map<String, Object> params = new HashMap<String, Object>();
        params.put("id", postID);
        
		String sql = "SELECT * FROM POSTS WHERE PostID=:id";
		
		Post result = namedParameterJdbcTemplate.queryForObject(sql, params, new PostMapper());
        
        return result;
	}

	public Post[] findPostsByCommunity(int communityID) {
		
		return null;
	}
	
	private static final class PostMapper implements RowMapper<Post> {

		public Post mapRow(ResultSet rs, int rowNum) throws SQLException {
			Post post = new Post();
			post.setTitle(rs.getString("PostTitle"));
			post.setContent(rs.getString("PostContent"));
			post.setDate(rs.getString("PostCreationDate"));
			post.setCommunityID(rs.getInt("CommunityID"));
			post.setAuthorID(rs.getInt("UserID"));
			return post;
		}
	}
	
}
