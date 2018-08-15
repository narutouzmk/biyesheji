package com.org.design.controller;

import com.org.design.domain.image.Head_image;
import com.org.design.domain.user.User;
import com.org.design.domain.user.UserInfo;
import com.org.design.service.GetHeadImageService;
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
 * Created by BIN on 2018/5/23.
 */
@Controller
public class PersonInfoController {
    private final static Logger log = LogManager.getLogger(PersonInfoController.class);

    @Autowired
    UserInfoService userInfoService;

    @Autowired
    UserService userService;

    @Autowired
    GetHeadImageService getHeadImageService;

    @RequestMapping(value = "/person_info")
    public ModelAndView checkPersonInfo(ModelAndView modelAndView, HttpSession session){
        List<Head_image> head_imageList = getHeadImageService.selectAllHeadImage();
        User user = (User)session.getAttribute("user");
        UserInfo userInfo1 = new UserInfo();
        userInfo1.setLogin_name(user.getLogin_name());
        UserInfo userInfo2 = userInfoService.getUserInfoByLoginName(userInfo1);
        modelAndView.addObject("check_userInfo", userInfo2);
        modelAndView.addObject("head_imageList",head_imageList);
        modelAndView.setViewName("personInformation");
        return modelAndView;
    }

    @RequestMapping(value = "/modify_finfo")
    public ModelAndView modifyFundationInfo(ModelAndView modelAndView, HttpSession session, User user){
        List<User> users = userService.getUserByName(user);
        if(users.size() > 0){
            String mess_already_exit = "<span class=\"check_tip\">此用户名已存在</span>";
            modelAndView.addObject("mess_already_exit", mess_already_exit);
            modelAndView.setViewName("personInformation");
            return modelAndView;
        }else {
            User user1 = (User)session.getAttribute("user");
            user.setUser_id(userService.getUserByName(user1).get(0).getUser_id());
            userService.updateUserById(user);
            modelAndView.setViewName("login");
            session.invalidate();
            return modelAndView;
        }
    }

    @RequestMapping(value = "/modify_pinfo")
    public ModelAndView modifyPersonInfo(ModelAndView modelAndView, HttpSession session, UserInfo userInfo){
        User user = (User)session.getAttribute("user");
        userInfo.setLogin_name(user.getLogin_name());
        userInfoService.updateUserInfoByLoginName(userInfo);
        modelAndView.setViewName("redirect: /person_info");
        return modelAndView;
    }
}
