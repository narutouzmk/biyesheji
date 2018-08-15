package com.org.design.domain.day;

import java.sql.Date;

/**
 * Created by BIN on 2018/5/13.
 */
public class DayGeneralizeConsume {
    private Integer bigItem_id;
    private double life_consume;
    private double learn_consume;
    private double entertainment_consume;
    private double invest_consume;
    private double other_consume;
    private Date day_date;
    private String login_name;

    public Integer getBigItem_id() {
        return bigItem_id;
    }

    public void setBigItem_id(Integer bigItem_id) {
        this.bigItem_id = bigItem_id;
    }

    public double getLife_consume() {
        return life_consume;
    }

    public void setLife_consume(double life_consume) {
        this.life_consume = life_consume;
    }

    public double getLearn_consume() {
        return learn_consume;
    }

    public void setLearn_consume(double learn_consume) {
        this.learn_consume = learn_consume;
    }

    public double getEntertainment_consume() {
        return entertainment_consume;
    }

    public void setEntertainment_consume(double entertainment_consume) {
        this.entertainment_consume = entertainment_consume;
    }

    public double getInvest_consume() {
        return invest_consume;
    }

    public void setInvest_consume(double invest_consume) {
        this.invest_consume = invest_consume;
    }

    public double getOther_consume() {
        return other_consume;
    }

    public void setOther_consume(double other_consume) {
        this.other_consume = other_consume;
    }

    public Date getDay_date() {
        return day_date;
    }

    public void setDay_date(Date day_date) {
        this.day_date = day_date;
    }

    public String getLogin_name() {
        return login_name;
    }

    public void setLogin_name(String login_name) {
        this.login_name = login_name;
    }
}
