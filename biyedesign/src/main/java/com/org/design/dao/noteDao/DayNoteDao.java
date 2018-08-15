package com.org.design.dao.noteDao;

import com.org.design.domain.myNote.DayNote;

import java.util.List;

/**
 * Created by BIN on 2018/5/19.
 */
public interface DayNoteDao {
    List<DayNote> selectNoteByLoginName(DayNote dayNote);
    List<DayNote> selectNoteByDate(DayNote dayNote);
    Integer insertNoteByLoginName(DayNote dayNote);
    Integer deleteNoteById(DayNote dayNote);
    Integer updateNoteById(DayNote dayNote);
}