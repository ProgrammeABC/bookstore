package com.bookstore.dao;


import com.bookstore.entity.Book;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BookDao {

    Book findByName(String bookName);



}
