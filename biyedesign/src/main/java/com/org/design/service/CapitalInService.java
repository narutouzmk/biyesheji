package com.org.design.service;

import com.org.design.dao.capitalDao.CapitalInDao;
import com.org.design.domain.capital.CapitalIn;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by BIN on 2018/5/22.
 */
@Service("capitalInService")
public class CapitalInService {

    @Autowired
    CapitalInDao capitalInDao;

    public CapitalIn selectCapitalInById(CapitalIn capitalIn){
        return capitalInDao.selectCapitalInById(capitalIn);
    }

    public List<CapitalIn> selectCapitalInByLoginName(CapitalIn capitalIn){
        return capitalInDao.selectCapitalInByLoginName(capitalIn);
    }

    public List<CapitalIn> selectCapitalInByDate(CapitalIn capitalIn){
        return capitalInDao.selectCapitalInByDate(capitalIn);
    }

    public Integer insertCapitalInByLoginName(CapitalIn capitalIn){
        return capitalInDao.insertCapitalInByLoginName(capitalIn);
    }

    public Integer updateCapitalInById(CapitalIn capitalIn){
        return capitalInDao.updateCapitalInById(capitalIn);
    }

    public Integer deleteCapitalInById(CapitalIn capitalIn){
        return capitalInDao.deleteCapitalInById(capitalIn);
    }
}
