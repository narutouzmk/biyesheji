package com.org.design.controller;

import com.org.design.domain.worldBank.WorldBank;
import com.org.design.service.WorldBankService;
import jdk.nashorn.internal.ir.annotations.Reference;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by BIN on 2018/5/22.
 */
@Controller
public class WorldBankController {
    @Autowired
    WorldBankService worldBankService;

    private final static Logger log = LogManager.getLogger(WorldBankController.class);

    @RequestMapping(value = "/worldBankInfo_show")
    public ModelAndView worldBankInfoShow(ModelAndView modelAndView){
        List<WorldBank> worldBanks = worldBankService.selectAllWorldBank();
        modelAndView.addObject("worldBanks", worldBanks);
        modelAndView.setViewName("worldBank");
        return modelAndView;
    }
}
