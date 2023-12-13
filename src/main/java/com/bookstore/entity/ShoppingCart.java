package com.bookstore.entity;

import java.io.Serializable;


public class ShoppingCart implements Serializable {
    private Integer id;

    private Integer userId;

    private Integer bookId;

    private Integer num;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getBookId() {
        return bookId;
    }

    public void setBookId(Integer bookId) {
        this.bookId = bookId;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public ShoppingCart(Integer id, Integer userId, Integer bookId, Integer num) {
        this.id = id;
        this.userId = userId;
        this.bookId = bookId;
        this.num = num;
    }

    public ShoppingCart() {
    }

    @Override
    public String toString() {
        return "ShoppingCart{" +
                "id=" + id +
                ", userId=" + userId +
                ", bookId=" + bookId +
                ", num=" + num +
                '}';
    }
}
