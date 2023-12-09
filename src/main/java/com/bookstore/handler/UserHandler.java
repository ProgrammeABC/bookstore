package com.bookstore.handler;


import com.alibaba.fastjson.JSONObject;
import com.bookstore.entity.User;
import com.bookstore.service.UserService;
import com.google.protobuf.Empty;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("user")
public class UserHandler {

    @Resource
    private UserService userService;

    @ResponseBody
    @RequestMapping("login")
    public Object login(@RequestBody JSONObject loginUserJson, HttpSession Session) {
        System.out.println(loginUserJson);
        User loginUser = loginUserJson.getObject("loginUser",User.class);
        String userName = loginUser.getUsername();
        String password = loginUser.getPassword();
        Map<String, Object> map = new HashMap<>();
        System.out.println("isruning+"+userName+"||"+password);
        //查询用户
        User user = userService.findByNameAndPassword(userName, password);
        if (user != null) {
            if(user.getIsDel()==1) {
                map.put("ok", false);
                map.put("msg", "The account has been deleted");
            } else if (user.getPassword().equals(password)) {
                Session.setAttribute("loginUser", user);
                map.put("ok", true);
                map.put("msg", "Login successfully");
                map.put("data",
                        new User(user.getUserId(), user.getUsername(),
                                null,
                                null,
                                user.getIsDel(),
                                user.getIsAdmin(),
                                user.getHeadUrl()
                                )
                );

            }else {
                map.put("ok", false);
                map.put("msg", "Login failed:unknown error");
            }
        } else {
            map.put("em", "用户名不存在");
        }
        return map;
    }

    @ResponseBody
    @RequestMapping("register")
    public Object register(@RequestBody JSONObject regUserJson, HttpSession Session) {
        System.out.println(regUserJson);
        User regUser = regUserJson.getObject("regUser",User.class);

        Map<String, Object> map = new HashMap<>();

        if(null != userService.findByUsername(regUser.getUsername())){
            map.put("ok",false);
            map.put("msg","Register failed:User >"+regUser.getUsername()+"< Already Exist");
        }else{
            userService.userReg(regUser);
            if(null == userService.findByUsername(regUser.getUsername())){
                map.put("ok",false);
                map.put("msg","Register failed:unknown error");
            }else{
                map.put("ok",true);
                map.put("msg","Welcome!User:"+regUser.getUsername()+" Register Successfully");
            }
        }

        return map;
    }

//    @ResponseBody
//    @RequestMapping("isExist")
//    public Object isExist(@RequestBody String username, HttpSession Session) {
////        System.out.println(userJson);
////        String username =  userJson.get("username").toString();
//
////        User user = userJson.getObject("regUser",User.class);
//
//        Map<String, Object> map = new HashMap<>();
//        map.put("ok",false);
//        return map;
//    }

}
