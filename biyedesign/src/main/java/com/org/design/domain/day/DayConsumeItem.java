package com.org.design.domain.day;

import java.sql.Date;

/**
 * Created by BIN on 2018/5/13.
 */
public class DayConsumeItem {
    private Integer consume_id;
    private String consume_item;
    private double consume_count;
    private Date consume_date;
    private String login_name;

    public Integer getConsume_id() {
        return consume_id;
    }

    public void setConsume_id(Integer consume_id) {
        this.consume_id = consume_id;
    }

    public String getConsume_item() {
        return consume_item;
    }

    public void setConsume_item(String consume_item) {
        this.consume_item = consume_item;
    }

    public double getConsume_count() {
        return consume_count;
    }

    public void setConsume_count(double consume_count) {
        this.consume_count = consume_count;
    }

    public Date getConsume_date() {
        return consume_date;
    }

    public void setConsume_date(Date consume_date) {
        this.consume_date = consume_date;
    }

    public String getLogin_name() {
        return login_name;
    }

    public void setLogin_name(String login_name) {
        this.login_name = login_name;
    }
}
