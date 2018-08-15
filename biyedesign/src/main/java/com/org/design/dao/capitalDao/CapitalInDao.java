package com.org.design.dao.capitalDao;

import com.org.design.domain.capital.CapitalIn;

import java.util.List;

/**
 * Created by BIN on 2018/5/14.
 */
public interface CapitalInDao {
    CapitalIn selectCapitalInById(CapitalIn capitalIn);
    List<CapitalIn> selectCapitalInByLoginName(CapitalIn capitalIn);
    List<CapitalIn> selectCapitalInByDate(CapitalIn capitalIn);
    Integer insertCapitalInByLoginName(CapitalIn capitalIn);
    Integer updateCapitalInById(CapitalIn capitalIn);
    Integer deleteCapitalInById(CapitalIn capitalIn);
}

/*
* selectCapitalInById
* selectCapitalInByLoginName
* selectCapitalInByDate
* insertCapitalInByLoginName
* updateCapitalInById
* deleteCapitalInById
* */