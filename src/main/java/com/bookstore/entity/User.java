package com.bookstore.entity;

import java.io.Serializable;

public class User implements Serializable {
    private Integer userId;

    private String username;

    private String password;

    private String phone;

    private Integer isDel;

    private Integer isAdmin;

    private String headUrl;

    public User() {
    }

    public User(Integer userId, String username, String password, String phone, Integer isDel, Integer isAdmin, String headUrl) {
        this.userId = userId;
        this.username = username;
        this.password = password;
        this.phone = phone;
        this.isDel = isDel;
        this.isAdmin = isAdmin;
        this.headUrl = headUrl;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Integer getIsDel() {
        return isDel;
    }

    public void setIsDel(Integer isDel) {
        this.isDel = isDel;
    }

    public Integer getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(Integer isAdmin) {
        this.isAdmin = isAdmin;
    }

    public String getHeadUrl() {
        return headUrl;
    }

    public void setHeadUrl(String headUrl) {
        this.headUrl = headUrl;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", phone='" + phone + '\'' +
                ", isDel=" + isDel +
                ", isAdmin=" + isAdmin +
                ", headUrl='" + headUrl + '\'' +
                '}';
    }
}

