package com.bookstore.dao;

import com.bookstore.entity.Book;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ShoppingCart {

    List<Book> findById(@Param("book_Id") String bookId, @Param("user_Id") String userId);
    void delBook(@Param("book_Id") String bookId);

    void addBook(@Param("id") String id,@Param("user_id") String userId,@Param("book_Id") String bookId,@Param("num") String num);



}
