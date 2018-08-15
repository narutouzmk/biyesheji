package com.org.design.service;

import com.org.design.dao.capitalDao.CapitalOutDao;
import com.org.design.domain.capital.CapitalOut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by BIN on 2018/5/22.
 */
@Service("capitalOutService")
public class CapitalOutService {

    @Autowired
    CapitalOutDao capitalOutDao;

    public CapitalOut selectCapitalOutById(CapitalOut capitalOut){
        return capitalOutDao.selectCapitalOutById(capitalOut);
    }

    public List<CapitalOut> selectCapitalOutByLoginName(CapitalOut capitalOut){
        return capitalOutDao.selectCapitalOutByLoginName(capitalOut);
    }

    public List<CapitalOut> selectCapitalOutByDate(CapitalOut capitalOut){
        return capitalOutDao.selectCapitalOutByDate(capitalOut);
    }

    public Integer insertCapitalOutByLoginName(CapitalOut capitalOut){
        return capitalOutDao.insertCapitalOutByLoginName(capitalOut);
    }

    public Integer updateCapitalOutById(CapitalOut capitalOut){
        return capitalOutDao.updateCapitalOutById(capitalOut);
    }

    public Integer deleteCapitalOutById(CapitalOut capitalOut){
        return capitalOutDao.deleteCapitalOutById(capitalOut);
    }
}
