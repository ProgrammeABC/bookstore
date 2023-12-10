package com.bookstore.dao;

import com.bookstore.entity.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {

    User findByNameAndPassword(@Param("username")String username, @Param("password")String password);

    User findByUsername(@Param("username")String username);

    void delUserByUsername(@Param("username")String username);

    void insertUser(@Param("username")String username,@Param("password")String password,@Param("phone")String phone,@Param("isAdmin")Integer isAdmin);
}
