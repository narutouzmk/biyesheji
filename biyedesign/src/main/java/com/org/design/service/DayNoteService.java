package com.org.design.service;

import com.org.design.dao.noteDao.DayNoteDao;
import com.org.design.domain.myNote.DayNote;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by BIN on 2018/5/19.
 */
@Service("dayNoteService")
public class DayNoteService {

    @Autowired
    DayNoteDao dayNoteDao;

    public List<DayNote> selectNoteByLoginName(DayNote dayNote){
        return dayNoteDao.selectNoteByLoginName(dayNote);
    }

    public List<DayNote> selectNoteByDate(DayNote dayNote){
        return dayNoteDao.selectNoteByDate(dayNote);
    }

    public Integer insertNoteByLoginName(DayNote dayNote){
        return dayNoteDao.insertNoteByLoginName(dayNote);
    }

    public Integer updateNoteById(DayNote dayNote){
        return dayNoteDao.updateNoteById(dayNote);
    }

    public Integer deleteNoteById(DayNote dayNote){
        return dayNoteDao.deleteNoteById(dayNote);
    }
}
