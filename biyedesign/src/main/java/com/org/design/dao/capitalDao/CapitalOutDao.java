package com.org.design.dao.capitalDao;

import com.org.design.domain.capital.CapitalOut;

import java.util.List;

/**
 * Created by BIN on 2018/5/14.
 */
public interface CapitalOutDao {
    CapitalOut selectCapitalOutById(CapitalOut capitalOut);
    List<CapitalOut> selectCapitalOutByLoginName(CapitalOut capitalOut);
    List<CapitalOut> selectCapitalOutByDate(CapitalOut capitalOut);
    Integer insertCapitalOutByLoginName(CapitalOut capitalOut);
    Integer updateCapitalOutById(CapitalOut capitalOut);
    Integer deleteCapitalOutById(CapitalOut capitalOut);
}

/*
* selectCapitalOutById
* selectCapitalOutByLoginName
* selectCapitalOutByDate
* insertCapitalOutByLoginName
* updateCapitalOutById
* deleteCapitalOutById
* */