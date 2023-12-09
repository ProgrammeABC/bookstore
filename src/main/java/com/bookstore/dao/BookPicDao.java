package com.bookstore.dao;

import com.bookstore.entity.BookPic;

import java.util.List;

public interface BookPicDao {
    List<BookPic> getBookPic(String id);
}
