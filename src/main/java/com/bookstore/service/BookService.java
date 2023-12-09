package com.bookstore.service;


import com.bookstore.dao.BookDao;
import com.bookstore.entity.Book;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class BookService {

    @Resource
    private BookDao bookDao;

    public Book findByName(String bookName){
        return bookDao.findByName(bookName);
    }
}
