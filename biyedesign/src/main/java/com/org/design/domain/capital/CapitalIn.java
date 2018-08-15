package com.org.design.domain.capital;

import java.sql.Date;

/**
 * Created by BIN on 2018/5/13.
 */
public class CapitalIn {
    private Integer capitali_id;
    private String capitali_item;
    private double capitali_count;
    private Date capitali_date;
    private String login_name;

    public Integer getCapitali_id() {
        return capitali_id;
    }

    public void setCapitali_id(Integer capitali_id) {
        this.capitali_id = capitali_id;
    }

    public String getCapitali_item() {
        return capitali_item;
    }

    public void setCapitali_item(String capitali_item) {
        this.capitali_item = capitali_item;
    }

    public double getCapitali_count() {
        return capitali_count;
    }

    public void setCapitali_count(double capitali_count) {
        this.capitali_count = capitali_count;
    }

    public Date getCapitali_date() {
        return capitali_date;
    }

    public void setCapitali_date(Date capitali_date) {
        this.capitali_date = capitali_date;
    }

    public String getLogin_name() {
        return login_name;
    }

    public void setLogin_name(String login_name) {
        this.login_name = login_name;
    }
}
