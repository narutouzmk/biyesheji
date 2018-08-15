package com.org.design.service;

import com.org.design.dao.dayDao.DayRevenueDao;
import com.org.design.domain.day.DayRevenueItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by BIN on 2018/5/21.
 */
@Service("dayRevenueItemService")
public class DayRevenueItemService {
    @Autowired
    DayRevenueDao dayRevenueDao;

    public DayRevenueItem selectDayRevenueId(DayRevenueItem dayRevenueItem){
        return dayRevenueDao.selectDayRevenueId(dayRevenueItem);
    }

    public List<DayRevenueItem> selectDayRevenueByLoginName(DayRevenueItem dayRevenueItem){
        return  dayRevenueDao.selectDayRevenueByLoginName(dayRevenueItem);
    }
    public List<DayRevenueItem> selectDayRevenueByDate(DayRevenueItem dayRevenueItem){
        return  dayRevenueDao.selectDayRevenueByDate(dayRevenueItem);
    }
    public Integer insertDayRevenueByLoginName(DayRevenueItem dayRevenueItem){
        return dayRevenueDao.insertDayRevenueByLoginName(dayRevenueItem);
    }
    public Integer updateDayRevenueById(DayRevenueItem dayRevenueItem){
        return dayRevenueDao.updateDayRevenueById(dayRevenueItem);
    }
    public Integer deleteDayRevenueById(DayRevenueItem dayRevenueItem){
        return dayRevenueDao.deleteDayRevenueById(dayRevenueItem);
    }
}
