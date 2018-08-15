package com.org.design.controller;

import com.org.design.domain.user.User;
import com.org.design.service.UserService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by BIN on 2018/5/13.
 */

@Controller
public class RegisterController {

    @Autowired
    UserService userService;


    private final static Logger log = LogManager.getLogger(RegisterController.class);
    @RequestMapping(value = "/register")
    public ModelAndView register(User user, ModelAndView modelAndView, HttpSession session){
        String mess_loginname= null;
        int flag = 0;
        List<User> users = null;

        if(user.getLogin_name() == null){
            modelAndView.setViewName("register");
            return modelAndView;
        }

        users = userService.getUserByName(user);
        if(users.size() > 0){
            log.info("用户名已存在");
            mess_loginname = "<span id=\"my-loginname-tip2\" class=\"glyphicon glyphicon-info-sign\"></span><span class=\"my-tip\">此用户名已存在</span>";
            modelAndView.addObject("mess_loginname", mess_loginname);
            modelAndView.setViewName("register");
            flag = 1;
        }

        if(flag == 0){
            user.setRole("user");
            user.setHead_img("hashiqi2.jpg");
            userService.addUser(user);
            session.setAttribute("user", user);
            modelAndView.setViewName("register-step-2");
            return modelAndView;
        }else{
           return modelAndView;
        }
    }
}
