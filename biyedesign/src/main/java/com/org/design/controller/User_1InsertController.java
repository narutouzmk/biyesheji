package com.org.design.controller;

import com.org.design.domain.day.DayGeneralizeConsume;
import com.org.design.domain.user.User;
import com.org.design.service.DayGeneralizeConsumeService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.sql.Date;

/**
 * Created by BIN on 2018/5/21.
 */
@Controller
public class User_1InsertController {
    private final static Logger log = LogManager.getLogger(User_1InsertController.class);

    @Autowired
    DayGeneralizeConsumeService dayGeneralizeConsumeService;

    @RequestMapping(value = "/InsertGeneralizeConsume")
    public ModelAndView insertGeneralizeConsume(ModelAndView modelAndView, HttpSession session, DayGeneralizeConsume dayGeneralizeConsume){
        Date date = new Date(System.currentTimeMillis());
        User user = (User)session.getAttribute("user");
        dayGeneralizeConsume.setLogin_name(user.getLogin_name());
        dayGeneralizeConsume.setDay_date(date);
        dayGeneralizeConsumeService.insertDayGeneralizeConsumeDaoByLoginName(dayGeneralizeConsume);
        modelAndView.setViewName("redirect: /user_1");

        return modelAndView;
    }
}
