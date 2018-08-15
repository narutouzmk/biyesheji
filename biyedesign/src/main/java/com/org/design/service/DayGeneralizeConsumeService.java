package com.org.design.service;

import com.org.design.dao.dayDao.DayGeneralizeConsumeDao;
import com.org.design.domain.day.DayGeneralizeConsume;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by BIN on 2018/5/18.
 */
@Service("dayGeneralizeConsumeService")
public class DayGeneralizeConsumeService {

    @Autowired
    private DayGeneralizeConsumeDao dayGeneralizeConsumeDao;

    public List<DayGeneralizeConsume> selectDayGeneralizeConsumeDaoByLoginName(DayGeneralizeConsume dayGeneralizeConsume){
        return dayGeneralizeConsumeDao.selectDayGeneralizeConsumeDaoByLoginName(dayGeneralizeConsume);
    }

    public Integer insertDayGeneralizeConsumeDaoByLoginName(DayGeneralizeConsume dayGeneralizeConsume){
        return dayGeneralizeConsumeDao.insertDayGeneralizeConsumeDaoByLoginName(dayGeneralizeConsume);
    }

    public Integer updateUserById(DayGeneralizeConsume dayGeneralizeConsume){
        return dayGeneralizeConsumeDao.updateUserById(dayGeneralizeConsume);
    }

    public Integer deleteDayGeneralizeConsumeDaoById(DayGeneralizeConsume dayGeneralizeConsume){
        return dayGeneralizeConsumeDao.deleteDayGeneralizeConsumeDaoById(dayGeneralizeConsume);
    }

    public  List<DayGeneralizeConsume> selectDayGeneralizeConsumeDaoByDate(DayGeneralizeConsume dayGeneralizeConsume){
        return dayGeneralizeConsumeDao.selectDayGeneralizeConsumeDaoByDate(dayGeneralizeConsume);
    }
}
/*
*
* List<DayGeneralizeConsume> selectDayGeneralizeConsumeDaoByLoginName(DayGeneralizeConsume dayGeneralizeConsume);
* Integer insertDayGeneralizeConsumeDaoByLoginName(DayGeneralizeConsume dayGeneralizeConsume);
* Integer updateUserById(DayGeneralizeConsume dayGeneralizeConsume);
* Integer deleteDayGeneralizeConsumeDaoById(DayGeneralizeConsume dayGeneralizeConsume);
* DayGeneralizeConsume selectDayGeneralizeConsumeDaoById(DayGeneralizeConsume dayGeneralizeConsume);
* */