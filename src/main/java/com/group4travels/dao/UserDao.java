package com.group4travels.dao;

import com.group4travels.model.User;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao {
    private JdbcTemplate jdbcTemplate;

    public UserDao(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }
    /*
     Create database if not exists travels;
     use travels;
     drop table if exists;
     create travel_user (
                            name varchar(50) not null,
                            username varchar(50) not null,
                            password varchar(50) not null,
                            email varchar(50) not null,
                            primary key ('username')
                          );


     */
    public void save(User user) {
        String sql = "INSERT INTO travel_user (name, username , password, email) VALUES (?, ? ,?, ?)";
        if(user.getUsername() != null && user.getName() != "" ) {
            jdbcTemplate.update(sql, user.getName(),user.getUsername(), user.getPassword(), user.getEmail());
        }
    }

    public User get(String username){
        String sql = "SELECT * FROM travel_user where username=? ";
        User user = (User) jdbcTemplate.queryForObject(sql, new Object[] {username }, new RowMapper<User>() {

            @Override
            public User mapRow(ResultSet rs, int rowNum) throws SQLException {
                User aUser = new User();
                aUser.setEmail(rs.getString("email"));
                aUser.setName(rs.getString("name"));
                aUser.setUsername(rs.getString("username"));
                aUser.setPassword(rs.getString("password"));
                return aUser;
            }
        });
        return user;
    }

}
