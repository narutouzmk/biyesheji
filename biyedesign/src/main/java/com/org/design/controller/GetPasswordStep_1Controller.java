package com.org.design.controller;

import com.org.design.domain.user.User;
import com.org.design.service.UserService;
import com.sun.org.apache.xml.internal.security.algorithms.implementations.IntegrityHmac;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by BIN on 2018/5/24.
 */
@Controller
public class GetPasswordStep_1Controller {
    @Autowired
    UserService userService;

    @RequestMapping(value = "/getPassword_step1")
    public ModelAndView getPassword_stepOne(ModelAndView modelAndView, HttpSession session, User user){
        List<User> users = userService.selectUserByLoginNameAndPhoneNumberAndEmail(user);
        if(users.size() > 0){
            Integer user_id = users.get(0).getUser_id();
            session.setAttribute("user_id", user_id);
            modelAndView.setViewName("getPassword_step2");
        }else {//<span id="my-loginname-tip2" class="glyphicon glyphicon-info-sign"></span><span class="my-tip">此用户名已存在</span>
            String mess_not_get = "<span id=\"my-loginname-tip2\" class=\"glyphicon glyphicon-info-sign\"></span><span class=\"my-tip\">无此用户或邮箱,电话号码填错,请确认后重新填写</span>";
            modelAndView.addObject("mess_not_get", mess_not_get);
            modelAndView.setViewName("forget_password");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/getPassword_step_f")
    public ModelAndView getFinalPassword(ModelAndView modelAndView, HttpSession session, User user){
        Integer user_id = (Integer)session.getAttribute("user_id");
        User user1 = new User();
        user1.setPassword(user.getPassword());
        user1.setUser_id(user_id);
        userService.updateUserById(user1);

        modelAndView.setViewName("login");
        return modelAndView;
    }
}
