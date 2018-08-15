package com.org.design.controller;

import com.org.design.domain.produce.Produce;
import com.org.design.domain.worldBank.WorldBank;
import com.org.design.service.ProduceService;
import com.org.design.service.WorldBankService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by BIN on 2018/5/23.
 */
@Controller
public class EnterpriseController {
    private final static Logger log = LogManager.getLogger(EnterpriseController.class);

    @Autowired
    ProduceService produceService;

    @RequestMapping(value = "/enterprise_info")
    public ModelAndView selectAllEnterpriseProduce(ModelAndView modelAndView){
        List<Produce> produces = produceService.selectAllProduce();
        modelAndView.addObject("produces", produces);
        modelAndView.setViewName("enterprise-manager");
        return modelAndView;
    }
}
