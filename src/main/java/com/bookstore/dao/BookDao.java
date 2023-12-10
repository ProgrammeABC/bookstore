package com.bookstore.dao;


import com.bookstore.entity.Book;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface BookDao {

    List<Book> findALL();
    Book getBookById(@Param("id") String id);



}
