package com.org.design.dao.dayDao;

import com.org.design.domain.day.DayConsumeItem;
import com.org.design.domain.day.DayRevenueItem;

import java.util.List;

/**
 * Created by BIN on 2018/5/14.
 */
public interface DayConsumeDao {
    DayRevenueItem selectDayConsumeById(DayConsumeItem dayConsumeItem);
    List<DayConsumeItem> selectDayConsumeByLoginName(DayConsumeItem dayConsumeItem);
    List<DayConsumeItem> selectDayConsumeByDate(DayConsumeItem dayConsumeItem);
    Integer insertDayConsumeByLoginName(DayConsumeItem dayConsumeItem);
    Integer updateDayConsumeById(DayConsumeItem dayConsumeItem);
    Integer deleteDayConsumeById(DayConsumeItem dayConsumeItem);
}
/**
 * selectDayConsumeById
 * selectDayConsumeByLoginName
 * selectDayConsumeByDate
 * insertDayConsumeByLoginName
 * updateDayConsumeById
 * deleteDayConsumeById
 */
