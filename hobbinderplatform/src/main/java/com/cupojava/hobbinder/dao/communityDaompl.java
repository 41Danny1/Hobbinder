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

import com.cupojava.hobbinder.model.community;


@Repository
public class communityDaompl implements communityDao {

	NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	@Autowired
	public void setNamedParameterJdbcTemplate(NamedParameterJdbcTemplate namedParameterJdbcTemplate) {
		this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
	}

	public int addCommunity(String name, String about, String type) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("name", name);
		params.put("about", about);
		params.put("type", type);
		
		String sql = "INSERT INTO COMMUNITIES(CommunityName, CommunityAbout, CommunityType) VALUES(:name, :about, :type)";

//        Student result = namedParameterJdbcTemplate.queryForObject(
//                    sql,
//                    params,
//                    new StudentMapper());

		return namedParameterJdbcTemplate.update(sql, params);
		
	}

	
}
