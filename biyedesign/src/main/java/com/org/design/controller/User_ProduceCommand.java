package com.org.design.controller;

import com.org.design.domain.produce.Produce;
import com.org.design.domain.user.User;
import com.org.design.domain.user.UserInfo;
import com.org.design.service.ProduceService;
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
 * Created by BIN on 2018/5/24.
 */

@Controller
public class User_ProduceCommand {

    private final static Logger log = LogManager.getLogger(User_ProduceCommand.class);

    @Autowired
    ProduceService produceService;

    @Autowired
    UserInfoService userInfoService;

    @RequestMapping(value = "/produce_commend")
    public ModelAndView artificial_command(ModelAndView modelAndView, HttpSession session){
        User user = (User)session.getAttribute("user");
        if(user == null){
            modelAndView.setViewName("redirect: /login_out");
            return modelAndView;
        }
        List<Produce> produceList;
        double my_allCapital;
        String _scale;
        UserInfo userInfo = new UserInfo();
        userInfo.setLogin_name(user.getLogin_name());

        my_allCapital = userInfoService.getUserInfoByLoginName(userInfo).getAllCapital();

        if (my_allCapital <= 10000){
            _scale = "small_scale";
        }else if (my_allCapital < 50000 && my_allCapital > 10000){
            _scale = "middle_scale";
        }else {
            _scale = "large_scale";
        }

        produceList = produceService.selectProduceByProduceSuit(_scale);
        modelAndView.addObject("produceList" ,produceList);
        modelAndView.setViewName("produce_command");
        return modelAndView;
    }

    @RequestMapping(value = "/look_upAllProduce")
    public ModelAndView companyAllProduce(ModelAndView modelAndView){
        List<Produce> produces_all = produceService.selectAllProduce();
        modelAndView.addObject("produces_all",produces_all);
        modelAndView.setViewName("my_produce");
        return modelAndView;
    }
}
