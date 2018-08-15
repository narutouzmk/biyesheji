package com.org.design.dao.dayDao;

import com.org.design.domain.day.DayRevenueItem;

import java.util.List;

/**
 * Created by BIN on 2018/5/14.
 */
public interface DayRevenueDao {
    DayRevenueItem selectDayRevenueId(DayRevenueItem dayRevenueItem);
    List<DayRevenueItem> selectDayRevenueByLoginName(DayRevenueItem dayRevenueItem);
    List<DayRevenueItem> selectDayRevenueByDate(DayRevenueItem dayRevenueItem);
    Integer insertDayRevenueByLoginName(DayRevenueItem dayRevenueItem);
    Integer updateDayRevenueById(DayRevenueItem dayRevenueItem);
    Integer deleteDayRevenueById(DayRevenueItem dayRevenueItem);
}

/*
* selectDayRevenueId
* selectDayRevenueByLoginName
* selectDayRevenueByDate
* insertDayRevenueByLoginName
* updateDayRevenueById
* deleteDayRevenueById
* */