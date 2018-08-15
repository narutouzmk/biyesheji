package com.org.design.domain.day;

import java.sql.Date;

/**
 * Created by BIN on 2018/5/13.
 */
public class DayRevenueItem {
    private Integer earn_id;
    private String earn_item;
    private double earn_count;
    private Date earn_date;
    private String login_name;

    public Integer getEarn_id() {
        return earn_id;
    }

    public void setEarn_id(Integer earn_id) {
        this.earn_id = earn_id;
    }

    public String getEarn_item() {
        return earn_item;
    }

    public void setEarn_item(String earn_item) {
        this.earn_item = earn_item;
    }

    public double getEarn_count() {
        return earn_count;
    }

    public void setEarn_count(double earn_count) {
        this.earn_count = earn_count;
    }

    public Date getEarn_date() {
        return earn_date;
    }

    public void setEarn_date(Date earn_date) {
        this.earn_date = earn_date;
    }

    public String getLogin_name() {
        return login_name;
    }

    public void setLogin_name(String login_name) {
        this.login_name = login_name;
    }
}
