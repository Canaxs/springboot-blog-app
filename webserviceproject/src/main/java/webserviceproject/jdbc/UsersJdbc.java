package webserviceproject.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


import webserviceproject.model.Veri;

@Repository
public class UsersJdbc {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	private RowMapper<Veri> rowMapper = new RowMapper<Veri>() {

		public Veri mapRow(ResultSet rs, int rowNum) throws SQLException {
			Veri veri = new Veri();
			veri.setUsername(rs.getString("username"));
			return veri;
		}
	};
	public List<Veri> findAll() {
		String sql = "select username from kullanici";
		
		return jdbcTemplate.query(sql, rowMapper);
	}
	
}
