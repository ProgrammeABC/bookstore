package com.bookstore.dao;

import com.bookstore.entity.ShoppingCart;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ShoppingCartDao {

//    List<Book> findItemByUIDAndBID(@Param("book_Id") Integer bookId, @Param("user_Id") Integer userId);
    List<ShoppingCart> findItemByUIDAndBID(@Param("userId") Integer userId,@Param("bookId") Integer bookId);

    List<ShoppingCart> findItemByID(@Param("id") Integer ItemId);
    List<ShoppingCart> findItemByUID(@Param("uid") Integer userId);
    void removeItemFromShoppingCart(@Param("ShoppingCart") ShoppingCart shoppingCart);
//    void addItemIntoShoppingCart(@Param("user_id") String userId,@Param("book_Id") String bookId,@Param("num") String num);
    void addItemIntoShoppingCart(@Param("ShoppingCart") ShoppingCart shoppingCart);

    void clearCart(@Param("ShoppingCart") ShoppingCart shoppingCart);

    void updateCartItem(@Param("ShoppingCart")ShoppingCart shoppingCart);
}
