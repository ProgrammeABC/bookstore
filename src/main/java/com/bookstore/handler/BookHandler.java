package com.bookstore.handler;

import com.alibaba.druid.support.json.JSONUtils;
import com.bookstore.entity.Book;
import com.bookstore.entity.User;
import com.bookstore.service.BookService;
import com.bookstore.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("book")
public class BookHandler {

    @Resource
    private BookService bookService;
    @Resource
    private UserService userService;

    @RequestMapping("loginUser")
    @ResponseBody
    public Object login(String userName, String password, HttpSession Session) {
        return null;
    }
}
