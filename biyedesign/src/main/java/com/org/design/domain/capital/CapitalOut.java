package com.org.design.domain.capital;

import java.sql.Date;

/**
 * Created by BIN on 2018/5/13.
 */
public class CapitalOut {
    private Integer capitalo_id;
    private String capitalo_item;
    private double capitalo_count;
    private Date capitalo_date;
    private String login_name;

    public Integer getCapitalo_id() {
        return capitalo_id;
    }

    public void setCapitalo_id(Integer capitalo_id) {
        this.capitalo_id = capitalo_id;
    }

    public String getCapitalo_item() {
        return capitalo_item;
    }

    public void setCapitalo_item(String capitalo_item) {
        this.capitalo_item = capitalo_item;
    }

    public double getCapitalo_count() {
        return capitalo_count;
    }

    public void setCapitalo_count(double capitalo_count) {
        this.capitalo_count = capitalo_count;
    }

    public Date getCapitalo_date() {
        return capitalo_date;
    }

    public void setCapitalo_date(Date capitalo_date) {
        this.capitalo_date = capitalo_date;
    }

    public String getLogin_name() {
        return login_name;
    }

    public void setLogin_name(String login_name) {
        this.login_name = login_name;
    }
}
