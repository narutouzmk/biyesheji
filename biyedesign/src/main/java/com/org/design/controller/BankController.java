package com.org.design.controller;

import com.org.design.domain.worldBank.WorldBank;
import com.org.design.service.WorldBankService;
import com.sun.org.apache.xpath.internal.operations.Mod;
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
public class BankController {

    private final static Logger log = LogManager.getLogger(BankController.class);

    @Autowired
    WorldBankService worldBankService;

    @RequestMapping(value = "/bank_info_maintenance")
    public ModelAndView checkAllBankInfo(ModelAndView modelAndView){
        List<WorldBank> worldBanks = worldBankService.selectAllWorldBank();
        modelAndView.addObject("m_worldBanks", worldBanks);
        modelAndView.setViewName("enterprise-info-mainten");
        return modelAndView;
    }

    @RequestMapping(value = "/insertBankInfo")
    public ModelAndView insertBankInfo(ModelAndView modelAndView, WorldBank worldBank){
        worldBankService.insertWorldBank(worldBank);
        modelAndView.setViewName("redirect: /bank_info_maintenance");
        return modelAndView;
    }

    @RequestMapping(value = "/updateBankInfo")
    public ModelAndView updateBankInfo(ModelAndView modelAndView, WorldBank worldBank){
        worldBankService.updateWorldBankById(worldBank);
        modelAndView.setViewName("redirect: /bank_info_maintenance");
        return modelAndView;
    }

    @RequestMapping(value = "/deleteBankInfo")
    public ModelAndView deleteBankInfo(ModelAndView modelAndView, WorldBank worldBank){
        worldBankService.deleteWorldBankById(worldBank);
        modelAndView.setViewName("redirect: /bank_info_maintenance");
        return modelAndView;
    }
}
