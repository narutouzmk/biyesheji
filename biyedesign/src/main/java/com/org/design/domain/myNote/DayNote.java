package com.org.design.domain.myNote;

import java.sql.Date;

/**
 * Created by BIN on 2018/5/19.
 */
public class DayNote {
    private Integer note_id;
    private Date note_date;
    private String note_item;
    private String login_name;

    public Integer getNote_id() {
        return note_id;
    }

    public void setNote_id(Integer note_id) {
        this.note_id = note_id;
    }

    public Date getNote_date() {
        return note_date;
    }

    public void setNote_date(Date note_date) {
        this.note_date = note_date;
    }

    public String getNote_item() {
        return note_item;
    }

    public void setNote_item(String note_item) {
        this.note_item = note_item;
    }

    public String getLogin_name() {
        return login_name;
    }

    public void setLogin_name(String login_name) {
        this.login_name = login_name;
    }
}
