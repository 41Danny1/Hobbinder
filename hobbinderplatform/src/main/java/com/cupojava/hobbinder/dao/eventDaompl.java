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
public class eventDaompl implements eventDao {

	NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	@Autowired
	public void setNamedParameterJdbcTemplate(NamedParameterJdbcTemplate namedParameterJdbcTemplate) {
		this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
	}

	public int addEvent(String name, String date, String location, String time, String description) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("name", name);
		params.put("date", date);
		params.put("location", location);
		params.put("time", time);
		params.put("description", description);
		
		String sql = "INSERT INTO EVENTS(EventName, EventDate, EventLocation, EventTime, EventDescription) VALUES(:name, :date, :location, :time, :description)";

//        Student result = namedParameterJdbcTemplate.queryForObject(
//                    sql,
//                    params,
//                    new StudentMapper());

		return namedParameterJdbcTemplate.update(sql, params);
		
	}

	
}
