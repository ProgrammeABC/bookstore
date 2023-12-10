package com.bookstore.dao;

import com.bookstore.entity.BookPic;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookPicDao {
    List<BookPic> findBookPic(@Param("id") String id,@Param("book_id") String bookId,@Param("book_picture") String bookPicture,@Param("intro") String intro);

}
