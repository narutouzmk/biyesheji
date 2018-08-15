package com.org.design.controller;

import com.org.design.domain.day.DayConsumeItem;
import com.org.design.domain.myNote.DayNote;
import com.org.design.domain.user.User;
import com.org.design.domain.user.UserInfo;
import com.org.design.service.DayConsumeItemService;
import com.org.design.service.DayNoteService;
import com.org.design.service.UserInfoService;
import com.org.design.service.UserService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.sql.Date;
import java.util.List;

/**
 * Created by BIN on 2018/5/20.
 */
@Controller
public class User_6Controller {
    private final static Logger log = LogManager.getLogger(RegisterController.class);

    @Autowired
    DayConsumeItemService dayConsumeItemService;

    @Autowired
    UserInfoService userInfoService;

    @Autowired
    DayNoteService dayNoteService;

    @RequestMapping(value = "/user_6")
    public ModelAndView checkUserConsumeItemByLoginName(ModelAndView modelAndView, HttpSession session){
        String mess_consumeItem;
        User user = (User)session.getAttribute("user");
        DayConsumeItem dayConsumeItem = new DayConsumeItem();
        dayConsumeItem.setLogin_name(user.getLogin_name());
        List<DayConsumeItem> dayConsumeItems = dayConsumeItemService.selectDayConsumeByLoginName(dayConsumeItem);

        if(dayConsumeItems.size() > 0){
            modelAndView.addObject("dayConsumeItems", dayConsumeItems);
            modelAndView.setViewName("user_6");
        }else {
            mess_consumeItem = "<span class=\"check_tip\">您还没有消费记录产生,快去记录吧</span>";
            modelAndView.addObject("mess_consumeItem", mess_consumeItem);
            modelAndView.setViewName("user_6");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/user_6DateCheck")
    public ModelAndView checkUserConsumeItemByDate(ModelAndView modelAndView, HttpSession session, DayConsumeItem dayConsumeItem){
        String mess_consumeItem2;
        User user = (User)session.getAttribute("user");
        dayConsumeItem.setLogin_name(user.getLogin_name());
        List<DayConsumeItem> dayConsumeItemList = dayConsumeItemService.selectDayConsumeByDate(dayConsumeItem);
        if(dayConsumeItemList.size() > 0){
            modelAndView.addObject("dayConsumeItemList",dayConsumeItemList);
            modelAndView.setViewName("user_6sub");
        }else {
            mess_consumeItem2 = "<span class=\"check_tip\">您还没有当日的消费记录产生</span>";
            modelAndView.addObject("mess_consumeItem2",mess_consumeItem2);
            modelAndView.setViewName("user_6sub");
        }

        return modelAndView;
    }

    @RequestMapping(value = "/user_6Update")
    public ModelAndView updateConsumeItem(ModelAndView modelAndView, HttpSession session, DayConsumeItem dayConsumeItem){

        if(dayConsumeItem.getConsume_count() != 0){
            double allCapital;
            double now_capital;
            double now_consume;
            double update_capital;
            User user = (User)session.getAttribute("user");
            UserInfo userInfo = new UserInfo();
            UserInfo userInfo1;
            userInfo.setLogin_name(user.getLogin_name());
            userInfo1 = userInfoService.getUserInfoByLoginName(userInfo);

            now_capital = userInfo1.getAllCapital();
            now_consume = dayConsumeItemService.selectDayConsumeById(dayConsumeItem).getEarn_count();
            update_capital = dayConsumeItem.getConsume_count();

            allCapital = now_capital + now_consume - update_capital;

            userInfo1.setAllCapital(allCapital);

            userInfoService.updateUserInfoByLoginName(userInfo1);
            dayConsumeItemService.updateDayConsumeById(dayConsumeItem);

            modelAndView.setViewName("redirect: /user_6");
        }else {
            dayConsumeItemService.updateDayConsumeById(dayConsumeItem);
            modelAndView.setViewName("redirect: /user_6");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/user_6Delete")
    public ModelAndView deleteConsumeItem(ModelAndView modelAndView, HttpSession session, DayConsumeItem dayConsumeItem) {
        double allCapital2;
        User user = (User) session.getAttribute("user");
        UserInfo userInfo = new UserInfo();
        UserInfo userInfo1;
        userInfo.setLogin_name(user.getLogin_name());
        userInfo1 = userInfoService.getUserInfoByLoginName(userInfo);
        allCapital2 = userInfo1.getAllCapital() + dayConsumeItemService.selectDayConsumeById(dayConsumeItem).getEarn_count();
        userInfo1.setAllCapital(allCapital2);

        userInfoService.updateUserInfoByLoginName(userInfo1);
        dayConsumeItemService.deleteDayConsumeById(dayConsumeItem);

        modelAndView.setViewName("redirect: /user_6");

        return modelAndView;
    }

    @RequestMapping(value = "/insert_consumeItem")
    public ModelAndView insertConsume_item(ModelAndView modelAndView, HttpSession session, DayConsumeItem dayConsumeItem){
//        修改总资产业务逻辑
        Date date = new Date(System.currentTimeMillis());
        double allCapital;
        User user = (User)session.getAttribute("user");
        UserInfo userInfo = new UserInfo();
        UserInfo userInfo1;
        userInfo.setLogin_name(user.getLogin_name());
        userInfo1 = userInfoService.getUserInfoByLoginName(userInfo);
        allCapital = userInfo1.getAllCapital() - dayConsumeItem.getConsume_count();
        userInfo1.setAllCapital(allCapital);

        dayConsumeItem.setLogin_name(user.getLogin_name());
        dayConsumeItem.setConsume_date(date);

        userInfoService.updateUserInfoByLoginName(userInfo1);
        dayConsumeItemService.insertDayConsumeByLoginName(dayConsumeItem);

        modelAndView.setViewName("redirect: /user_6");
        return modelAndView;
    }
}
