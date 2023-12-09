package com.bookstore.entity;

import java.io.Serializable;

public class BookPic implements Serializable {
    private Integer id;

    private Integer bookId;

    private String bookPicture;

    private String intro;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getBookId() {
        return bookId;
    }

    public void setBookId(Integer bookId) {
        this.bookId = bookId;
    }

    public String getBookPicture() {
        return bookPicture;
    }

    public void setBookPicture(String bookPicture) {
        this.bookPicture = bookPicture;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    @Override
    public String toString() {
        return "BookPic{" +
                "id=" + id +
                ", bookId=" + bookId +
                ", bookPicture='" + bookPicture + '\'' +
                ", intro='" + intro + '\'' +
                '}';
    }
}
