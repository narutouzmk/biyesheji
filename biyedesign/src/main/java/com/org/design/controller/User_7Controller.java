package com.org.design.controller;

import com.org.design.domain.day.DayRevenueItem;
import com.org.design.domain.user.User;
import com.org.design.domain.user.UserInfo;
import com.org.design.service.DayRevenueItemService;
import com.org.design.service.UserInfoService;
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
 * Created by BIN on 2018/5/21.
 */
@Controller
public class User_7Controller {
    private final static Logger log = LogManager.getLogger(User_7Controller.class);

    @Autowired
    DayRevenueItemService dayRevenueItemService;

    @Autowired
    UserInfoService userInfoService;

    @RequestMapping(value = "/user_7")
    public ModelAndView checkUserRevenueItemByLoginName(ModelAndView modelAndView, HttpSession session){
        String mess_revenueItem;
        User user = (User)session.getAttribute("user");
        DayRevenueItem dayRevenueItem = new DayRevenueItem();
        dayRevenueItem.setLogin_name(user.getLogin_name());
        List<DayRevenueItem> dayRevenueItems = dayRevenueItemService.selectDayRevenueByLoginName(dayRevenueItem);

        if (dayRevenueItems.size() > 0){
            modelAndView.addObject("dayRevenueItems",dayRevenueItems);
            modelAndView.setViewName("user_7");
        }else {
            mess_revenueItem = "<span class=\"check_tip\">您还没有收入记录产生,快去记录吧</span>";
            modelAndView.addObject("mess_revenueItem", mess_revenueItem);
            modelAndView.setViewName("user_7");
        }//<span class="check_tip">您还没有消费记录产生,快去记录吧</span>

        return modelAndView;
    }

    @RequestMapping(value = "/user_7DateCheck")
    public ModelAndView checkUserRevenueItemByDate(ModelAndView modelAndView, HttpSession session, DayRevenueItem dayRevenueItem){
        String mess_revenueItem2;
        User user = (User)session.getAttribute("user");
        dayRevenueItem.setLogin_name(user.getLogin_name());
        List<DayRevenueItem> dayRevenueItemList = dayRevenueItemService.selectDayRevenueByDate(dayRevenueItem);
        if(dayRevenueItemList.size() > 0){
            modelAndView.addObject("dayRevenueItemList", dayRevenueItemList);
            modelAndView.setViewName("user_7sub");
        }else {
            mess_revenueItem2 = "<span class=\"check_tip\">您当天没有收入记录记录</span>";
            modelAndView.addObject("mess_revenueItem2",mess_revenueItem2);
            modelAndView.setViewName("user_6sub");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/user_7Update")
    public ModelAndView updateRevenueItem(ModelAndView modelAndView, HttpSession session, DayRevenueItem dayRevenueItem){
        if(dayRevenueItem.getEarn_count() != 0){
            double allCapital;
            double now_capital;
            double now_revenue;
            double update_revenue;

            User user = (User)session.getAttribute("user");
            UserInfo userInfo = new UserInfo();
            UserInfo userInfo1;
            userInfo.setLogin_name(user.getLogin_name());
            userInfo1 = userInfoService.getUserInfoByLoginName(userInfo);

            now_capital = userInfo1.getAllCapital();
            now_revenue = dayRevenueItemService.selectDayRevenueId(dayRevenueItem).getEarn_count();
            update_revenue = dayRevenueItem.getEarn_count();

            allCapital = now_capital - now_revenue + update_revenue;

            userInfo1.setAllCapital(allCapital);

            userInfoService.updateUserInfoByLoginName(userInfo1);
            dayRevenueItemService.updateDayRevenueById(dayRevenueItem);

            modelAndView.setViewName("redirect: /user_7");
        }else {
            dayRevenueItemService.updateDayRevenueById(dayRevenueItem);
            modelAndView.setViewName("redirect: /user_7");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/user_7Delete")
    public ModelAndView deleteRevenueItem(ModelAndView modelAndView, HttpSession session, DayRevenueItem dayRevenueItem){
        double allCapital;
        User user = (User)session.getAttribute("user");
        UserInfo userInfo = new UserInfo();
        UserInfo userInfo1;
        userInfo.setLogin_name(user.getLogin_name());
        userInfo1 = userInfoService.getUserInfoByLoginName(userInfo);
        allCapital = userInfo1.getAllCapital() - dayRevenueItemService.selectDayRevenueId(dayRevenueItem).getEarn_count();
        userInfo1.setAllCapital(allCapital);

        userInfoService.updateUserInfoByLoginName(userInfo1);
        dayRevenueItemService.deleteDayRevenueById(dayRevenueItem);

        modelAndView.setViewName("redirect: /user_7");

        return modelAndView;
    }

    @RequestMapping(value = "/insert_revenue")
    public ModelAndView insertRevenue(ModelAndView modelAndView, HttpSession session, DayRevenueItem dayRevenueItem){
        Date date = new Date(System.currentTimeMillis());
        double allCapital;
        User user = (User)session.getAttribute("user");
        UserInfo userInfo = new UserInfo();
        UserInfo userInfo1;
        userInfo.setLogin_name(user.getLogin_name());
        userInfo1 = userInfoService.getUserInfoByLoginName(userInfo);
        allCapital = userInfo1.getAllCapital() + dayRevenueItem.getEarn_count();

        userInfo1.setAllCapital(allCapital);
        dayRevenueItem.setLogin_name(user.getLogin_name());
        dayRevenueItem.setEarn_date(date);

        userInfoService.updateUserInfoByLoginName(userInfo1);
        dayRevenueItemService.insertDayRevenueByLoginName(dayRevenueItem);

        modelAndView.setViewName("redirect: /user_7");
        return modelAndView;
    }
}
