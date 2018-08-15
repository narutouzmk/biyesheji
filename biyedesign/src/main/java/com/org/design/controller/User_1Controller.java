package com.org.design.controller;

import com.org.design.domain.day.DayGeneralizeConsume;
import com.org.design.domain.user.User;
import com.org.design.domain.user.UserInfo;
import com.org.design.service.DayGeneralizeConsumeService;
import com.org.design.service.UserInfoService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.Collections;
import java.util.List;

/**
 * Created by BIN on 2018/5/17.
 */
@Controller
public class User_1Controller {
    private final static Logger log = LogManager.getLogger(RegisterController.class);

    @Autowired
    DayGeneralizeConsumeService dayGeneralizeConsumeService;

    @Autowired
    UserInfoService userInfoService;

    @RequestMapping(value = "/user_1")
    public ModelAndView user_1(ModelAndView modelAndView, HttpSession session){
        String warning;
        String user_1Mess;
        double count_life = 0,
                count_learn = 0,
                count_entertainment = 0,
                count_invest = 0,
                count_other = 0,
                count_all = 0;
        double p_life = 0,
                p_learn = 0,
                p_entertainment = 0,
                p_invest = 0,
                p_other = 0;
        List<DayGeneralizeConsume> dayGeneralizeConsumes = null;
        DayGeneralizeConsume dayGeneralizeConsume = new DayGeneralizeConsume();
        User user = (User)session.getAttribute("user");
        UserInfo userInfo1 = new UserInfo();
        userInfo1.setLogin_name(user.getLogin_name());
        UserInfo userInfo = userInfoService.getUserInfoByLoginName(userInfo1);
        if(userInfo.getAllCapital() < 600000){
            warning = "<span class=\"check_tip\">注意:您的资产不足60,0000元,注意理性消费</span>";
            modelAndView.addObject("warning", warning);
        }
        dayGeneralizeConsume.setLogin_name(user.getLogin_name());
        dayGeneralizeConsumes = dayGeneralizeConsumeService.selectDayGeneralizeConsumeDaoByLoginName(dayGeneralizeConsume);
        for(DayGeneralizeConsume dayGeneralizeConsume1 : dayGeneralizeConsumes){
            count_life += dayGeneralizeConsume1.getLife_consume();
            count_learn += dayGeneralizeConsume1.getLearn_consume();
            count_entertainment += dayGeneralizeConsume1.getEntertainment_consume();
            count_invest += dayGeneralizeConsume1.getInvest_consume();
            count_other += dayGeneralizeConsume1.getOther_consume();
        }
        count_all = count_life + count_learn + count_entertainment + count_invest + count_other;
        if(count_all > 0){
            p_life = count_life / count_all * 100.0;
            p_learn = count_learn / count_all * 100.0;
            p_entertainment = count_entertainment / count_all * 100.0;
            p_invest = count_invest / count_all * 100.0;
            p_other = count_other / count_all * 100.0;

            modelAndView.addObject("p_life" , p_life);
            modelAndView.addObject("p_learn", p_learn);
            modelAndView.addObject("p_entertainment", p_entertainment);
            modelAndView.addObject("p_invest", p_invest);
            modelAndView.addObject("p_other", p_other);
        }else {
            user_1Mess = "<span class=\"check_tip\">您目前还未创建相应账单,快去创建个人账单吧</span>";
            modelAndView.addObject("p_life" , p_life);
            modelAndView.addObject("p_learn", p_learn);
            modelAndView.addObject("p_entertainment", p_entertainment);
            modelAndView.addObject("p_invest", p_invest);
            modelAndView.addObject("p_other", p_other);
            modelAndView.addObject("user_1Mess",user_1Mess);
        }
        Collections.reverse(dayGeneralizeConsumes);
        modelAndView.addObject("dayGeneralizeConsumes",dayGeneralizeConsumes);
        modelAndView.setViewName("user_1");
        return modelAndView;
    }

    @RequestMapping(value = "/user_1DateCheck")
    public ModelAndView user_1DateCheck(ModelAndView modelAndView, HttpSession session, DayGeneralizeConsume dayGeneralizeConsume){
        String user_Generalizemess;

        List<DayGeneralizeConsume> dayGeneralizeConsumeList = null;
        DayGeneralizeConsume dayGeneralizeConsume1 = new DayGeneralizeConsume();
        User user = (User) session.getAttribute("user");
        dayGeneralizeConsume1.setLogin_name(user.getLogin_name());
        dayGeneralizeConsume1.setDay_date(dayGeneralizeConsume.getDay_date());

        dayGeneralizeConsumeList = dayGeneralizeConsumeService.selectDayGeneralizeConsumeDaoByDate(dayGeneralizeConsume1);
        if(dayGeneralizeConsumeList.size() > 0){
            modelAndView.addObject("dayGeneralizeConsumeList",dayGeneralizeConsumeList);
            modelAndView.setViewName("user_1sub");
            return modelAndView;
            //<span class="check_tip">今天您还没有创建日记</span>
        }else {
            user_Generalizemess = "<span class=\"check_tip\">今天您还没有创建日记</span>";
            modelAndView.addObject("user_Generalizemess", user_Generalizemess);
            modelAndView.setViewName("user_1sub");
            return modelAndView;
        }
    }

    @RequestMapping(value = "/user_1Update")
    public ModelAndView user_1Update(ModelAndView modelAndView, DayGeneralizeConsume dayGeneralizeConsume){
        dayGeneralizeConsumeService.updateUserById(dayGeneralizeConsume);
        modelAndView.setViewName("redirect: /user_1");
        return modelAndView;
    }

    @RequestMapping(value = "/user_1Delete")
    public ModelAndView user_1Delete(ModelAndView modelAndView,DayGeneralizeConsume dayGeneralizeConsume){
        dayGeneralizeConsumeService.deleteDayGeneralizeConsumeDaoById(dayGeneralizeConsume);
        modelAndView.setViewName("redirect: /user_1");
        return modelAndView;
    }
}
