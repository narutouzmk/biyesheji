package com.org.design.controller;

import com.org.design.domain.user.User;
import com.org.design.service.*;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by BIN on 2018/5/23.
 */
@Controller
public class UserManagerController {
    private final static Logger log = LogManager.getLogger(UserManagerController.class);

    @Autowired
    UserService userService;
//
//    @Autowired
//    UserInfoService userInfoService;
//    @Autowired
//    DayNoteService dayNoteService;
//    @Autowired
//    DayRevenueItemService dayRevenueItemService;
//    @Autowired
//    DayConsumeItemService dayConsumeItemService;
//    @Autowired
//    DayGeneralizeConsumeService dayGeneralizeConsumeService;


    @RequestMapping(value = "/user-generalize")
    public ModelAndView checkAllUsers(ModelAndView modelAndView){
        double count_user;
        double count_manager;
        double p_user;
        double p_manager;
        User user = new User();
        User manager = new User();
        List<User> users;
        List<User> managers;
        user.setRole("user");
        manager.setRole("manager");
        users = userService.getManagerOrUser(user);
        managers = userService.getManagerOrUser(manager);
        count_user = users.size();
        count_manager = managers.size();
        if(count_user != 0 || count_manager != 0){
            p_user = count_user / (count_user + count_manager) * 100;
            p_manager = count_manager / (count_user + count_manager) * 100;
        }else{
            p_user = 0;
            p_manager = 0;
        }
        modelAndView.addObject("count_manager",count_manager);
        modelAndView.addObject("count_user",count_user);
        modelAndView.addObject("p_manager",p_manager);
        modelAndView.addObject("p_user",p_user);
        modelAndView.addObject("managers",managers);
        modelAndView.addObject("users",users);

        modelAndView.setViewName("manager");
        return modelAndView;
    }

    @RequestMapping(value = "/user_manager")
    public ModelAndView managerAllUser(ModelAndView modelAndView){
        List<User> userList = userService.selectAllUser();
        modelAndView.addObject("userList", userList);
        modelAndView.setViewName("user-manager");
        return modelAndView;
    }

    @RequestMapping(value = "/manager_delete")
    public ModelAndView managerDeleteUser(ModelAndView modelAndView, User user){
        User user1 = userService.getUserById(user);
        if (user1 != null){
            userService.deleteUserById(user);
            modelAndView.setViewName("redirect: /user_manager");

        }else {//<span class="check_tip">您当天没有收入记录记录</span>
            String mess_m_delete_null = "<span class=\"check_tip\">不存在此编号,请查证后重新输入</span><a href=\"/user_manager\">点击返回前一个页面</a>";
            modelAndView.addObject("mess_m_delete_null",mess_m_delete_null);
            modelAndView.setViewName("user-manager");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/manager_update")
    public ModelAndView managerUpdateUser(ModelAndView modelAndView, HttpSession session, User user){
        List<User> users = userService.getUserByName(user);
        if(users.size() > 0){
            String mess_m_already_exit = "<span class=\"check_tip\">已存在同名用户,请换个登录名试试</span><a href=\"/user_manager\">或点击返回前一个页面</a>";
            modelAndView.addObject("mess_m_already_exit",mess_m_already_exit);
            modelAndView.setViewName("user-manager");
            return modelAndView;
        }else {
            User user1 = (User)session.getAttribute("user");
            List<User> login_user = userService.getUserByName(user1); //获取当前登录的user,用于判断是不是修改当前管理员的账号
            userService.updateUserById(user);
            if(login_user.get(0).getUser_id() == user.getUser_id()){
                session.removeAttribute("user");
                modelAndView.setViewName("login");
                session.invalidate();
                return modelAndView;
            }else {
                modelAndView.setViewName("redirect: /user_manager");
                return modelAndView;
            }
        }
    }

    @RequestMapping(value = "/insertManager")
    public ModelAndView insertManager(ModelAndView modelAndView, User user){
        List<User> users = userService.getUserByName(user);
        if(users.size() > 0){
            String mess_addManager = "<span class=\"check_tip\">已存在同名用户,请换个登录名</span>";
            modelAndView.setViewName("user-info-mainten");
            return modelAndView;
        }else {
            user.setRole("manager");
            user.setHead_img("hashiqi2.jpg");
            userService.addUser(user);
            modelAndView.setViewName("redirect: /user_manager");
        }
        return modelAndView;
    }
}
