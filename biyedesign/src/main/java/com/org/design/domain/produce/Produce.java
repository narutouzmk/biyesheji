package com.org.design.domain.produce;


import java.sql.Date;

/**
 * Created by BIN on 2018/5/14.
 */
public class Produce {
    private Integer produce_id;
    private String produce_item;
    private String produce_company;
    private Date online_date;
    private String produce_state;
    private String produce_suit;

    public String getProduce_suit() {
        return produce_suit;
    }

    public void setProduce_suit(String produce_suit) {
        this.produce_suit = produce_suit;
    }

    public Integer getProduce_id() {
        return produce_id;
    }

    public void setProduce_id(Integer produce_id) {
        this.produce_id = produce_id;
    }

    public String getProduce_item() {
        return produce_item;
    }

    public void setProduce_item(String produce_item) {
        this.produce_item = produce_item;
    }

    public String getProduce_company() {
        return produce_company;
    }

    public void setProduce_company(String produce_company) {
        this.produce_company = produce_company;
    }

    public Date getOnline_date() {
        return online_date;
    }

    public void setOnline_date(Date online_date) {
        this.online_date = online_date;
    }

    public String getProduce_state() {
        return produce_state;
    }

    public void setProduce_state(String produce_state) {
        this.produce_state = produce_state;
    }
}
