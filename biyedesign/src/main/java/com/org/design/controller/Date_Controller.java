package com.org.design.controller;

import com.org.design.domain.myNote.DayNote;
import com.org.design.domain.user.User;
import com.org.design.service.DayNoteService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.sql.Date;
import java.util.List;

/**
 * Created by BIN on 2018/5/19.
 */
@Controller
public class Date_Controller {
    @Autowired
    DayNoteService dayNoteService;

    private final static Logger log = LogManager.getLogger(Date_Controller.class);

    @RequestMapping(value = "/user_3")
    public ModelAndView checkAllNote(ModelAndView modelAndView, HttpSession session){
        String info_message1 = "";
        User user = (User)session.getAttribute("user");
        DayNote dayNote = new DayNote();
        dayNote.setLogin_name(user.getLogin_name());
        List<DayNote> dayNotes = dayNoteService.selectNoteByLoginName(dayNote);
        if(dayNotes.size() > 0){
            modelAndView.addObject("dayNotes", dayNotes);
            modelAndView.setViewName("user_3");
        }else {
            info_message1 = "<span class=\"check_tip\">您还没创建日记,快去创建日记吧!</span>";
            modelAndView.addObject("info_message1", info_message1);
            modelAndView.setViewName("user_3");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/user_3DateCheck")
    public ModelAndView checkNoteByDate(ModelAndView modelAndView, HttpSession session, DayNote dayNote){
        String info_message2 = "";
        User user = (User)session.getAttribute("user");
        dayNote.setLogin_name(user.getLogin_name());
        List<DayNote> dayNoteList = dayNoteService.selectNoteByDate(dayNote);
        if(dayNoteList.size() > 0){
            modelAndView.addObject("note_date", dayNote.getNote_date());
            modelAndView.addObject("dayNoteList", dayNoteList);
            modelAndView.setViewName("user_3sub");
        }else {
            info_message2 = "<span class=\"check_tip\">今天您还没有创建日记</span>";
            modelAndView.addObject("info_message2", info_message2);
            modelAndView.setViewName("user_3sub");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/user_3Update")
    public ModelAndView user_3Update(ModelAndView modelAndView, DayNote dayNote){
        dayNoteService.updateNoteById(dayNote);
        modelAndView.setViewName("redirect: /user_3");
        return modelAndView;
    }

    @RequestMapping(value = "/user_3Delete")
    public ModelAndView user_3Delete(ModelAndView modelAndView, DayNote dayNote){
        dayNoteService.deleteNoteById(dayNote);
        modelAndView.setViewName("redirect: /user_3");
        return  modelAndView;
    }

    @RequestMapping(value = "/insert_note")
    public ModelAndView insert_noteByLoginName(ModelAndView modelAndView, HttpSession session, DayNote dayNote){
        User user = (User)session.getAttribute("user");
        Date date = new Date(System.currentTimeMillis());
        dayNote.setLogin_name(user.getLogin_name());
        dayNote.setNote_date(date);
        dayNoteService.insertNoteByLoginName(dayNote);
        modelAndView.setViewName("redirect: /user_3");
        return modelAndView;
    }
}
