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
import java.util.List;

/**
 * Created by BIN on 2018/5/14.
 */

@Controller
public class LoginController {
    @Autowired
    UserService userService;

    @Autowired
    UserInfoService userInfoService;

    private final static Logger log = LogManager.getLogger(LoginController.class);

    @RequestMapping(value = "/login")
    public ModelAndView login(ModelAndView modelAndView, HttpSession httpSession, User user){
        if(user.getLogin_name() == null){
            modelAndView.setViewName("login");
            return modelAndView;
        }
        String mess_error = null;
        String password = null;
        List<User> users = null;

        password = user.getPassword();
        users = userService.getUserByName(user);
        if(users.size() > 0){
            log.info(users.get(0).getLogin_name());
            log.info(users.get(0).getPassword());
            if(users.get(0).getPassword().equals(password) ){
                String description;
                UserInfo userInfo = new UserInfo();
                userInfo.setLogin_name(users.get(0).getLogin_name());
                description = userInfoService.getUserInfoByLoginName(userInfo).getDescription();
                httpSession.setAttribute("user", users.get(0));
                httpSession.setAttribute("description", description);
                if(users.get(0).getRole().equals("user")){
                    modelAndView.setViewName("redirect: /user_1");
                    return modelAndView;
                }else {
                    modelAndView.setViewName("redirect: /user-generalize");
                    return modelAndView;
                }

            }else{
                mess_error = "<span id=\"my-loginname-tip2\" class=\"glyphicon glyphicon-info-sign\"></span><span class=\"my-tip\">用户名或密码错误</span>";
                modelAndView.addObject("mess_error", mess_error);
                modelAndView.setViewName("login");
                return modelAndView;
            }
            //<span id="my-loginname-tip2" class="glyphicon glyphicon-info-sign"></span><span class="my-tip">此用户名已存在</span>
        }else{
            mess_error = "<span id=\"my-loginname-tip2\" class=\"glyphicon glyphicon-info-sign\"></span><span class=\"my-tip\">此用户名不存在</span>";
            modelAndView.addObject("mess_error", mess_error);
            modelAndView.setViewName("login");
            return modelAndView;
        }
    }
}
