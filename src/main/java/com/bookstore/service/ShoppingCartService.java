package com.bookstore.service;


import com.bookstore.dao.ShoppingCartDao;
import com.bookstore.entity.ShoppingCart;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Objects;

@Service
public class ShoppingCartService {

    @Resource
    private ShoppingCartDao shoppingCartDao;

    public Boolean addToCart(Integer userId, Integer bookId, Integer num){
        ShoppingCart cartItem = new ShoppingCart(null,userId,bookId,num);
        if(shoppingCartDao.findItemByUIDAndBID(userId,bookId).isEmpty()){
            shoppingCartDao.addItemIntoShoppingCart(cartItem);
            if(!shoppingCartDao.findItemByUIDAndBID(userId,bookId).isEmpty()){
                return true;
            }
            return false;
        }else{
            return false;
        }
    }
    public Boolean delFromCart(Integer itemId){
        if(!shoppingCartDao.findItemByID(itemId).isEmpty()){
            shoppingCartDao.removeItemFromShoppingCart(new ShoppingCart(itemId,null,null,null));
            if(shoppingCartDao.findItemByID(itemId).isEmpty()){
                return true;
            }
            return false;
        }else{
            return false;
        }
    }

    public List<ShoppingCart> listItem(Integer userId){

        return shoppingCartDao.findItemByUID(userId);
    }

    public boolean clearCart(Integer userId){
        shoppingCartDao.clearCart(new ShoppingCart(null,userId,null,null));
        if(shoppingCartDao.findItemByUID(userId).isEmpty()){
            return true;
        }else{
            return false;
        }
    }

    public boolean updateItem(ShoppingCart shoppingCart){
        shoppingCartDao.updateCartItem(shoppingCart);
        ShoppingCart findCartItem = shoppingCartDao.findItemByID(shoppingCart.getId()).get(0);
        if(Objects.equals(findCartItem.getNum(), shoppingCart.getNum())){
            return true;
        }else{
            return false;
        }
    }


}
