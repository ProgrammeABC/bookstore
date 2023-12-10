package com.bookstore.service;



import com.bookstore.dao.UserDao;
import com.bookstore.entity.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserService {

    @Resource
    private UserDao userDao;

    public User findByNameAndPassword(String username, String password){
        return userDao.findByNameAndPassword(username,password);
    }

    public void delUserByUsername(String username){
        userDao.delUserByUsername(username);
    }
    public User findByUsername(String username){
        return userDao.findByUsername(username);
    }

    public void userReg(User user){
        userDao.insertUser(user.getUsername(),user.getPassword(),user.getPhone(),0);
    }

}
