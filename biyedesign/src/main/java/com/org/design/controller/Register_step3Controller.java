package com.org.design.controller;

import com.org.design.domain.produce.Produce;
import com.org.design.domain.user.UserInfo;
import com.org.design.service.ProduceService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by BIN on 2018/5/17.
 */
@Controller
public class Register_step3Controller {

    @Autowired
    ProduceService produceService;

    private final static Logger log = LogManager.getLogger(Register_step2Controller.class);

    @RequestMapping(value = "/register_step3")
    public ModelAndView registerStep3(ModelAndView modelAndView, HttpSession session){

        List<Produce> produces = null;

        double allCapital = 0;
        String scale = null;
        UserInfo userInfo = (UserInfo)session.getAttribute("userInfo");
        allCapital = userInfo.getAllCapital();
        if(allCapital <= 10000){
            scale = "small_scale";
        }else if(allCapital > 10000 && allCapital < 50000){
            scale = "middle_scale";
        }else {
            scale = "large_scale";
        }

        produces = produceService.selectProduceByProduceSuit(scale);

        modelAndView.addObject("produces", produces);
        modelAndView.setViewName("register-step-3");
        return modelAndView;
    }
}
