package com.org.design.controller;

import com.org.design.domain.user.User;
import com.org.design.domain.user.UserInfo;
import com.org.design.service.UserInfoService;
import com.org.design.service.UserService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * Created by BIN on 2018/5/16.
 */
@Controller
public class Register_step2Controller {
    @Autowired
    private UserInfoService userInfoService;

    private final static Logger log = LogManager.getLogger(Register_step2Controller.class);

    @RequestMapping(value = "/register_step2")
    public ModelAndView registerStep2(ModelAndView modelAndView, HttpSession session, UserInfo userInfo){
        User user = (User) session.getAttribute("user");
        userInfo.setLogin_name(user.getLogin_name());
        if(userInfo.getDescription() == ""){
            userInfo.setDescription("这个人很懒，什么都不说。。");
        }
        userInfoService.insertUserInfoByLoginName(userInfo);
        session.setAttribute("userInfo", userInfo);
        modelAndView.setViewName("redirect: /register_step3");
        return modelAndView;
    }
}
