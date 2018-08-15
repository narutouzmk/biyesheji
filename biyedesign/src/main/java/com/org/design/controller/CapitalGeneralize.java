package com.org.design.controller;

import com.org.design.domain.capital.CapitalIn;
import com.org.design.domain.capital.CapitalOut;
import com.org.design.domain.day.DayConsumeItem;
import com.org.design.domain.user.User;
import com.org.design.domain.user.UserInfo;
import com.org.design.service.CapitalInService;
import com.org.design.service.CapitalOutService;
import com.org.design.service.DayConsumeItemService;
import com.org.design.service.UserInfoService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by BIN on 2018/5/22.
 */
@Controller
public class CapitalGeneralize {
    @Autowired
    CapitalInService capitalInService;

    @Autowired
    CapitalOutService capitalOutService;

    @Autowired
    DayConsumeItemService dayConsumeItemService;

    @Autowired
    UserInfoService userInfoService;

    private final static Logger log = LogManager.getLogger(CapitalGeneralize.class);

    @RequestMapping(value = "/capital_generalize")
    public ModelAndView checkMyCapitalGeneralize(ModelAndView modelAndView, HttpSession session){
        double all = 0;
        double capital_mm = 0;
        double capital_out = 0;
        double capital_in = 0;
        double negative_consume = 0;

        double p_out;
        double p_in;
        double p_n;

        User user = (User)session.getAttribute("user");

        List<CapitalIn> capitalIns;
        List<CapitalOut> capitalOuts;
        List<DayConsumeItem> dayConsumeItems;

        CapitalIn capitalIn = new CapitalIn();
        CapitalOut capitalOut = new CapitalOut();
        DayConsumeItem dayConsumeItem = new DayConsumeItem();
        UserInfo userInfo = new UserInfo();

        capitalIn.setLogin_name(user.getLogin_name());
        capitalOut.setLogin_name(user.getLogin_name());
        dayConsumeItem.setLogin_name(user.getLogin_name());
        userInfo.setLogin_name(user.getLogin_name());

        capital_mm = userInfoService.getUserInfoByLoginName(userInfo).getAllCapital();

        capitalIns = capitalInService.selectCapitalInByLoginName(capitalIn);
        capitalOuts = capitalOutService.selectCapitalOutByLoginName(capitalOut);
        dayConsumeItems = dayConsumeItemService.selectDayConsumeByLoginName(dayConsumeItem);

        for (CapitalIn ci : capitalIns){
            capital_in += ci.getCapitali_count();
        }
        for (CapitalOut co : capitalOuts){
            capital_out += co.getCapitalo_count();
        }
        for(DayConsumeItem d : dayConsumeItems){
            negative_consume += d.getConsume_count();
        }

        all = capital_in + capital_out + negative_consume;
        if(all != 0){
            p_in = capital_in / all * 100;
            p_out = capital_out / all * 100;
            p_n = negative_consume / all * 100;
        }else {
            p_in = 0;
            p_out = 0;
            p_n = 0;
        }

        modelAndView.addObject("p_in",p_in);
        modelAndView.addObject("p_out",p_out);
        modelAndView.addObject("p_n",p_n);

        modelAndView.addObject("capital_in",capital_in);
        modelAndView.addObject("capital_out",capital_out);
        modelAndView.addObject("negative_consume",negative_consume);
        modelAndView.addObject("capital_mm",capital_mm);

        modelAndView.setViewName("capital_1");
        return modelAndView;
    }
}
