package com.xie.service;

import com.xie.dao.UserDao;
import com.xie.entity.User;

import java.util.List;

public class UserService {
    private static UserDao userDao = new UserDao();

    public static List<User> userList(){
        return userDao.userList();
    }

    public static void addUser(User user){
        userDao.addUser(user);
    }

    public static User findbyID(String id){
        return userDao.findbyID(id);
    }

    public static void updateUser(User user){
        userDao.updateUser(user);
    }
    public static void delUser(String id){
        userDao.delUser(id);
    }
}
