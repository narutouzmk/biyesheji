package com.org.design.service;

import com.org.design.dao.dayDao.DayConsumeDao;
import com.org.design.domain.day.DayConsumeItem;
import com.org.design.domain.day.DayRevenueItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by BIN on 2018/5/20.
 */
@Service("dayConsumeItemService")
public class DayConsumeItemService {

    @Autowired
    private DayConsumeDao dayConsumeDao;

    public DayRevenueItem selectDayConsumeById(DayConsumeItem dayConsumeItem){
        return dayConsumeDao.selectDayConsumeById(dayConsumeItem);
    }

    public List<DayConsumeItem> selectDayConsumeByLoginName(DayConsumeItem dayConsumeItem){
        return dayConsumeDao.selectDayConsumeByLoginName(dayConsumeItem);
    }

    public List<DayConsumeItem> selectDayConsumeByDate(DayConsumeItem dayConsumeItem){
        return dayConsumeDao.selectDayConsumeByDate(dayConsumeItem);
    }

    public Integer insertDayConsumeByLoginName(DayConsumeItem dayConsumeItem){
        return dayConsumeDao.insertDayConsumeByLoginName(dayConsumeItem);
    }

    public Integer updateDayConsumeById(DayConsumeItem dayConsumeItem){
        return dayConsumeDao.updateDayConsumeById(dayConsumeItem);
    }

    public Integer deleteDayConsumeById(DayConsumeItem dayConsumeItem){
        return dayConsumeDao.deleteDayConsumeById(dayConsumeItem);
    }
}

/*
* List<DayConsumeItem> selectDayConsumeByLoginName(DayConsumeItem dayConsumeItem);
* List<DayConsumeItem> selectDayConsumeByDate(DayConsumeItem dayConsumeItem);
* Integer insertDayConsumeByLoginName(DayConsumeItem dayConsumeItem);
* Integer updateDayConsumeById(DayConsumeItem dayConsumeItem);
* Integer deleteDayConsumeById(DayConsumeItem dayConsumeItem);
*/