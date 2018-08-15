package com.org.design.controller;

import com.org.design.domain.capital.CapitalOut;
import com.org.design.domain.user.User;
import com.org.design.domain.user.UserInfo;
import com.org.design.service.CapitalOutService;
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
public class Capital_OutController {

    @Autowired
    CapitalOutService capitalOutService;

    @Autowired
    UserInfoService userInfoService;

    private final static Logger log = LogManager.getLogger(Capital_OutController.class);

    @RequestMapping(value = "/capital_sellOut")
    public ModelAndView capitalOutShow(ModelAndView modelAndView, HttpSession session){
        String mess_capitalOut;
        User user = (User)session.getAttribute("user");
        CapitalOut capitalOut = new CapitalOut();
        capitalOut.setLogin_name(user.getLogin_name());
        List<CapitalOut> capitalOuts = capitalOutService.selectCapitalOutByLoginName(capitalOut);

        if(capitalOuts.size() > 0){
            modelAndView.addObject("capitalOuts",capitalOuts);
            modelAndView.setViewName("capital_out");
        }else {
            mess_capitalOut = "<span class=\"check_tip\">您还没有资产卖出记录产生,快去记录吧</span>";
            modelAndView.addObject("mess_capitalOut", mess_capitalOut);
            modelAndView.setViewName("capital_out");
        }//<span class="check_tip">您还没有消费记录产生,快去记录吧</span>
        return modelAndView;
    }

    @RequestMapping(value = "/capital_outCheckByDate")
    public ModelAndView capitalOutCheckByDate(ModelAndView modelAndView, HttpSession session, CapitalOut capitalOut){
        String mess_capitalOut2;
        User user = (User)session.getAttribute("user");
        capitalOut.setLogin_name(user.getLogin_name());
        List<CapitalOut> capitalOutList = capitalOutService.selectCapitalOutByDate(capitalOut);

        if(capitalOutList.size() > 0){
            modelAndView.addObject("capitalOutList",capitalOutList);
            modelAndView.setViewName("capital_outSub");
        }else {
            mess_capitalOut2 = "<span class=\"check_tip\">您没有当日的资产卖出记录产生</span>";
            modelAndView.addObject("mess_capitalOut2",mess_capitalOut2);
            modelAndView.setViewName("capital_outSub");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/capital_out_update")
    public ModelAndView capitalOutUpdate(ModelAndView modelAndView, HttpSession session, CapitalOut capitalOut){
        if(capitalOut.getCapitalo_count() != 0) {
            double allCapital;
            double now_capital;
            double now_capital_outCount;
            double update_capital;
            User user = (User) session.getAttribute("user");
            UserInfo userInfo = new UserInfo();
            UserInfo userInfo1;
            userInfo.setLogin_name(user.getLogin_name());
            userInfo1 = userInfoService.getUserInfoByLoginName(userInfo);
            now_capital = userInfo1.getAllCapital();
            update_capital = capitalOut.getCapitalo_count();
            now_capital_outCount = capitalOutService.selectCapitalOutById(capitalOut).getCapitalo_count();
            allCapital = now_capital - now_capital_outCount + update_capital;
            userInfo1.setAllCapital(allCapital);

            userInfoService.updateUserInfoByLoginName(userInfo);
            capitalOutService.updateCapitalOutById(capitalOut);

            modelAndView.setViewName("redirect: /capital_sellOut");
        }else {
            capitalOutService.updateCapitalOutById(capitalOut);
            modelAndView.setViewName("redirect: /capital_sellOut");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/capital_out_delete")
    public ModelAndView deleteCapitalOut(ModelAndView modelAndView, HttpSession session, CapitalOut capitalOut){
        double allCapital2;
        User user = (User) session.getAttribute("user");
        UserInfo userInfo = new UserInfo();
        UserInfo userInfo1;
        userInfo.setLogin_name(user.getLogin_name());
        userInfo1 = userInfoService.getUserInfoByLoginName(userInfo);

        allCapital2 = userInfo1.getAllCapital() + capitalOutService.selectCapitalOutById(capitalOut).getCapitalo_count();
        userInfo1.setAllCapital(allCapital2);

        userInfoService.updateUserInfoByLoginName(userInfo1);
        capitalOutService.deleteCapitalOutById(capitalOut);

        modelAndView.setViewName("redirect: /capital_sellOut");
        return modelAndView;
    }

    @RequestMapping(value = "/insert_capitalOut")
    public ModelAndView insertCapitalOut(ModelAndView modelAndView, HttpSession session, CapitalOut capitalOut){
        Date date = new Date(System.currentTimeMillis());
        double allCapital;
        User user = (User)session.getAttribute("user");
        UserInfo userInfo = new UserInfo();
        UserInfo userInfo1;
        userInfo.setLogin_name(user.getLogin_name());
        userInfo1 = userInfoService.getUserInfoByLoginName(userInfo);
        allCapital = userInfo1.getAllCapital() + capitalOut.getCapitalo_count();
        userInfo1.setAllCapital(allCapital);

        capitalOut.setLogin_name(user.getLogin_name());
        capitalOut.setCapitalo_date(date);

        userInfoService.updateUserInfoByLoginName(userInfo1);
        capitalOutService.insertCapitalOutByLoginName(capitalOut);

        modelAndView.setViewName("redirect: /capital_sellOut");
        return modelAndView;
    }
}
