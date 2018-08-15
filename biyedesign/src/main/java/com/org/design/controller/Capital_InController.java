package com.org.design.controller;

import com.org.design.domain.capital.CapitalIn;
import com.org.design.domain.user.User;
import com.org.design.domain.user.UserInfo;
import com.org.design.service.CapitalInService;
import com.org.design.service.UserInfoService;
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
 * Created by BIN on 2018/5/22.
 */
@Controller
public class Capital_InController {

    private final static Logger log = LogManager.getLogger(Capital_InController.class);

    @Autowired
    CapitalInService capitalInService;

    @Autowired
    UserInfoService userInfoService;

    @RequestMapping(value = "/capital_buyIn")
    public ModelAndView capitalInShow(ModelAndView modelAndView, HttpSession session){
        String mess_capitalIn;
        User user = (User)session.getAttribute("user");
        CapitalIn capitalIn = new CapitalIn();
        capitalIn.setLogin_name(user.getLogin_name());
        List<CapitalIn> capitalIns = capitalInService.selectCapitalInByLoginName(capitalIn);

        if(capitalIns.size() > 0){
            modelAndView.addObject("capitalIns",capitalIns);
            modelAndView.setViewName("capital_in");
        }else {
            mess_capitalIn = "<span class=\"check_tip\">您还没有资产买入记录产生,快去记录吧</span>";
            modelAndView.addObject("mess_capitalIn", mess_capitalIn);
            modelAndView.setViewName("capital_in");
        }//<span class="check_tip">您还没有消费记录产生,快去记录吧</span>
        return modelAndView;
    }

    @RequestMapping(value = "/capital_inCheckByDate")
    public ModelAndView capitalInCheckByDate(ModelAndView modelAndView, HttpSession session, CapitalIn capitalIn){
        String mess_capitalIn1;
        User user = (User)session.getAttribute("user");
        capitalIn.setLogin_name(user.getLogin_name());
        List<CapitalIn> capitalInList = capitalInService.selectCapitalInByDate(capitalIn);

        if(capitalInList.size() > 0){
            modelAndView.addObject("capitalInList",capitalInList);
            modelAndView.setViewName("capital_inSub");
        }else {
            mess_capitalIn1 = "<span class=\"check_tip\">您没有当日的资产买入记录产生</span>";
            modelAndView.addObject("mess_capitalIn1",mess_capitalIn1);
            modelAndView.setViewName("capital_inSub");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/capital_in_update")
    public ModelAndView capitalInUpdate(ModelAndView modelAndView, HttpSession session, CapitalIn capitalIn){
        if(capitalIn.getCapitali_count() != 0) {
            double allCapital;
            double now_capital;
            double now_capital_inCount;
            double update_capital;
            User user = (User) session.getAttribute("user");
            UserInfo userInfo = new UserInfo();
            UserInfo userInfo1;
            userInfo.setLogin_name(user.getLogin_name());
            userInfo1 = userInfoService.getUserInfoByLoginName(userInfo);
            now_capital = userInfo1.getAllCapital();
            update_capital = capitalIn.getCapitali_count();
            now_capital_inCount = capitalInService.selectCapitalInById(capitalIn).getCapitali_count();
            allCapital = now_capital + now_capital_inCount - update_capital;
            userInfo1.setAllCapital(allCapital);

            userInfoService.updateUserInfoByLoginName(userInfo);
            capitalInService.updateCapitalInById(capitalIn);

            modelAndView.setViewName("redirect: /capital_buyIn");
        }else {
            capitalInService.updateCapitalInById(capitalIn);
            modelAndView.setViewName("redirect: /capital_buyIn");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/capital_in_delete")
    public ModelAndView deleteCapitalIn(ModelAndView modelAndView, HttpSession session, CapitalIn capitalIn){
        double allCapital2;
        User user = (User) session.getAttribute("user");
        UserInfo userInfo = new UserInfo();
        UserInfo userInfo1;
        userInfo.setLogin_name(user.getLogin_name());
        userInfo1 = userInfoService.getUserInfoByLoginName(userInfo);

        allCapital2 = userInfo1.getAllCapital() + capitalInService.selectCapitalInById(capitalIn).getCapitali_count();
        userInfo1.setAllCapital(allCapital2);
        userInfoService.updateUserInfoByLoginName(userInfo1);
        capitalInService.deleteCapitalInById(capitalIn);
        modelAndView.setViewName("redirect: /capital_buyIn");
        return modelAndView;
    }

    @RequestMapping(value = "/insert_capitalIn")
    public ModelAndView insertCapitalIn(ModelAndView modelAndView, HttpSession session, CapitalIn capitalIn){
        Date date = new Date(System.currentTimeMillis());
        double allCapital;
        User user = (User)session.getAttribute("user");
        UserInfo userInfo = new UserInfo();
        UserInfo userInfo1;
        userInfo.setLogin_name(user.getLogin_name());
        userInfo1 = userInfoService.getUserInfoByLoginName(userInfo);
        allCapital = userInfo1.getAllCapital() - capitalIn.getCapitali_count();
        userInfo1.setAllCapital(allCapital);

        capitalIn.setLogin_name(user.getLogin_name());
        capitalIn.setCapitali_date(date);

        userInfoService.updateUserInfoByLoginName(userInfo1);
        capitalInService.insertCapitalInByLoginName(capitalIn);

        modelAndView.setViewName("redirect: /capital_buyIn");
        return modelAndView;
    }
}
