package com.xie.dao;


import com.xie.entity.User;
import com.xie.utils.DBUtil;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class UserDao {
    private JdbcTemplate template = new JdbcTemplate(DBUtil.getDateSource());

    public List<User> userList(){
        String sql="select * from user";
        return template.query(sql,new BeanPropertyRowMapper<>(User.class));
    }

    public void addUser(User user){
        String sql = "insert into user(dept_id,username,password,age,sex,sal,birthday) values(?,?,?,?,?,?,?)";
        template.update(sql,user.getDeptId(),user.getUsername(),user.getPassword(),user.getAge(),user.getSex(),user.getSal(),user.getBirthday());
    }

    public User findbyID(String id){
        String sql="select * from user where id=?";
        return template.queryForObject(sql,new BeanPropertyRowMapper<>(User.class),id);
    }

    public void updateUser(User user){
        String sql="update user set dept_id=?,username=?,age=?,sex=?,sal=?,birthday=? where id=?";
        template.update(sql,user.getDeptId(),user.getUsername(),user.getAge(),user.getSex(),user.getSal(),user.getBirthday(),user.getId());
    }

    public void delUser(String id){
        String sql="delete from user where id =?";
        template.update(sql,id);
    }
}
