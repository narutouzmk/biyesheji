package com.org.design.dao.dayDao;

import com.org.design.domain.day.DayGeneralizeConsume;

import java.util.List;

/**
 * Created by BIN on 2018/5/14.
 */
public interface DayGeneralizeConsumeDao {
    List<DayGeneralizeConsume> selectDayGeneralizeConsumeDaoByLoginName(DayGeneralizeConsume dayGeneralizeConsume);
    Integer insertDayGeneralizeConsumeDaoByLoginName(DayGeneralizeConsume dayGeneralizeConsume);
    Integer updateUserById(DayGeneralizeConsume dayGeneralizeConsume);
    Integer deleteDayGeneralizeConsumeDaoById(DayGeneralizeConsume dayGeneralizeConsume);
    List<DayGeneralizeConsume> selectDayGeneralizeConsumeDaoByDate(DayGeneralizeConsume dayGeneralizeConsume);
}