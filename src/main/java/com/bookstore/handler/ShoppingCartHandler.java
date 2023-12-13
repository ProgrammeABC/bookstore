package com.bookstore.handler;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.bookstore.dao.ShoppingCartDao;
import com.bookstore.entity.ShoppingCart;
import com.bookstore.service.ShoppingCartService;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("shoppingCart")
public class ShoppingCartHandler {
    Map<String,Object> failedOption(Map<String,Object> returnMap,String errorInfo){
        returnMap.put("status",false);
        returnMap.put("msg",errorInfo);
        return returnMap;
    }
    @Resource
    private ShoppingCartService shoppingCartService;

    @ResponseBody
    @RequestMapping("addToCart")
    public Object addToCart(@RequestBody JSONObject addToCartItemJson, HttpSession httpSession){
        Map<String,Object> map = new HashMap<>();
        if(null!=addToCartItemJson) {
            System.out.println(addToCartItemJson);
            ShoppingCart addToCartItem = addToCartItemJson.getObject("addToCartItem",ShoppingCart.class);

            if(shoppingCartService.addToCart(addToCartItem.getUserId(),addToCartItem.getBookId(), addToCartItem.getNum())){
                map.put("status",true);
                map.put("msg","购物车处理:添加成功！");
            }else{
                map = failedOption(map,"购物车处理:添加失败！");
            }
        } else{
            map = failedOption(map,"请求错误:请求数据为空！");
        }

        return map;
    }

    @ResponseBody
    @RequestMapping("removeFromCart")
    public Object removeFromCart(@RequestBody Integer delId){
        System.out.println(delId);
        Map<String,Object> map = new HashMap<>();
        if(null!=delId) {
            if(shoppingCartService.delFromCart(delId)){
                map.put("status",true);
                map.put("msg","购物车处理:移除成功！");
            }else{
                map = failedOption(map,"购物车处理:移除失败！");
            }
        } else{
            map = failedOption(map,"请求错误:请求数据为空！");
        }


        return map;
    }

    @ResponseBody
    @RequestMapping("listCartItem")
    public Object listCartItem(Integer uid){
        Map<String,Object> map = new HashMap<>();
        if(null!=uid) {
            List<ShoppingCart> result = shoppingCartService.listItem(uid);
            map.put("status",true);
            if(result.isEmpty()){
                map.put("msg","购物车处理:购物车为空！");
                map.put("countNumber",0);//购物车内容长度
            }else{
                map.put("msg","购物车处理:列出购物车项成功！");
                map.put("countNumber",result.size());//购物车内容长度
                map.put("resultMap",result);//购物车结果集
            }
        } else{
            map = failedOption(map,"请求错误:请求数据为空！");
        }
        return map;
    }

    @ResponseBody
    @RequestMapping("updateCartItem")
    public Object updateCartItem(@RequestBody JSONObject newCartItemJSON){
        Map<String,Object> map = new HashMap<>();
        if(null!=newCartItemJSON) {
            ShoppingCart newCartItem = newCartItemJSON.getObject("newCartItem",ShoppingCart.class);
            if(shoppingCartService.updateItem(newCartItem)){
                map.put("status",true);
                map.put("msg","购物车处理:购物车项已更新！");
            }else{
                map = failedOption(map,"购物车处理:购物车项更新失败！");
            }
        } else{
            map = failedOption(map,"请求错误:请求数据为空！");
        }
        return map;
    }

    @ResponseBody
    @RequestMapping("clearCart")
    public Object clearCart(Integer uid){
        Map<String,Object> map = new HashMap<>();
        if(null!=uid) {
            if (shoppingCartService.clearCart(uid)) {
                map.put("status", true);
                map.put("msg", "购物车处理:购物车已清空！");
            } else {
                map = failedOption(map,"购物车处理:购物车清空失败！");
            }
        } else{
            map = failedOption(map,"请求错误:请求数据为空！");
        }
        return map;
    }
}
