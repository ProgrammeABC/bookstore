package com.bookstore.service;


import com.bookstore.dao.ShoppingCart;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class ShoppingCartService {

    @Resource
    private ShoppingCart shoppingCart;


}
