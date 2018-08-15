package com.org.design.controller;

import com.org.design.domain.produce.Produce;
import com.org.design.service.ProduceService;
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
public class ProduceController {

    @Autowired
    ProduceService produceService;

    private final static Logger log = LogManager.getLogger(ProduceController.class);

    @RequestMapping(value = "/check_produceByDate")
    public ModelAndView selectProduceByDate(ModelAndView modelAndView, Produce produce){
        List<Produce> produceList1 = produceService.selectProduceByDate(produce);
        if(produceList1.size() > 0){
            modelAndView.addObject("produceList_date",produceList1);
            modelAndView.setViewName("enterprise-managerSub1");
        }else {
            String mess_data_produce = "<span class=\"check_tip\">当天没有产品上线</span><a href=\"/enterprise_info\">点此返回上一级页面</a>";
            modelAndView.addObject("mess_data_produce", mess_data_produce);
            modelAndView.setViewName("enterprise-managerSub1");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/check_produceByCompany")
    public ModelAndView selectProduceByCompany(ModelAndView modelAndView, Produce produce){
        List<Produce> produceList2 = produceService.selectProduceByCompany(produce);
        log.info(produceList2.size());
        if(produceList2.size() > 0){
            modelAndView.addObject("produceList_company",produceList2);
            modelAndView.setViewName("enterprise-managerSub2");
        }else {
            String mess_company_produce = "<span class=\"check_tip\">此公司没有产品</span><a href=\"/enterprise_info\">点此返回上一级页面</a>";
            modelAndView.addObject("mess_company_produce", mess_company_produce);
            modelAndView.setViewName("enterprise-managerSub2");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/produce_delete")
    public ModelAndView deleteProduce(ModelAndView modelAndView, Produce produce){
        produceService.deleteProduceById(produce);
        modelAndView.setViewName("redirect: /enterprise_info");
        return modelAndView;
    }
    @RequestMapping(value = "/produce_update")
    public ModelAndView updateProduce(ModelAndView modelAndView, Produce produce){
        produceService.updateProduceById(produce);
        modelAndView.setViewName("redirect: /enterprise_info");
        return modelAndView;
    }
    @RequestMapping(value = "/produce_insert")
    public ModelAndView insertProduce(ModelAndView modelAndView, Produce produce){
        produceService.insertCompanyProduce(produce);
        modelAndView.setViewName("redirect: /enterprise_info");
        return modelAndView;
    }
}
