package com.org.design.controller;

import com.sun.javafx.sg.prism.NGShape;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * Created by BIN on 2018/5/21.
 */
@Controller
public class SkipPage {

    @RequestMapping(value = "user_2")
    public ModelAndView skip_user2(ModelAndView modelAndView){
        modelAndView.setViewName("user_2");
        return modelAndView;
    }

    @RequestMapping(value = "user_4")
    public ModelAndView skip_user4(ModelAndView modelAndView){
        modelAndView.setViewName("user_4");
        return modelAndView;
    }

    @RequestMapping(value = "user_5")
    public ModelAndView skip_user5(ModelAndView modelAndView){
        modelAndView.setViewName("user_5");
        return modelAndView;
    }

    @RequestMapping(value = "/capital_sellOutInsert")
    public ModelAndView skip_capital_OutInsert(ModelAndView modelAndView){
        modelAndView.setViewName("capital_outInsert");
        return modelAndView;
    }

    @RequestMapping(value = "/capital_buyInsert")
    public ModelAndView skip_capital_InInsert(ModelAndView modelAndView){
        modelAndView.setViewName("capital_inInsert");
        return modelAndView;
    }

    @RequestMapping(value = "/login_out")
    public ModelAndView skip_loginOut(ModelAndView modelAndView, HttpSession session){
        if(session.getAttribute("user") != null){
            session.removeAttribute("user");
        }
        modelAndView.setViewName("login");
        return modelAndView;
    }

    @RequestMapping(value = "/add_manager")
    public ModelAndView skip_addManager(ModelAndView modelAndView){
        modelAndView.setViewName("user-info-mainten");
        return modelAndView;
    }

    @RequestMapping(value = "/forget_password")
    public ModelAndView skip_getPassword(ModelAndView modelAndView){
        modelAndView.setViewName("forget_password");
        return modelAndView;
    }
}
