package com.org.design.domain.worldBank;

import java.sql.Date;

/**
 * Created by BIN on 2018/5/13.
 */
public class WorldBank {

    private Integer bank_id;

    private Double gov_cur;
    private Double gov_bal;

    private Double cbank_cur;
    private Double cbank_bal;

    private Double fbond_cur;
    private Double fbond_bal;

    private Double ccre_cur;
    private Double ccre_bal;

    private Double ino_cur;
    private Double ino_bal;

    private Double oth_cur;
    private Double oth_bal;

    private Date cur_date;

    public Integer getBank_id() {
        return bank_id;
    }

    public void setBank_id(Integer bank_id) {
        this.bank_id = bank_id;
    }

    public Double getGov_cur() {
        return gov_cur;
    }

    public void setGov_cur(Double gov_cur) {
        this.gov_cur = gov_cur;
    }

    public Double getGov_bal() {
        return gov_bal;
    }

    public void setGov_bal(Double gov_bal) {
        this.gov_bal = gov_bal;
    }

    public Double getCbank_cur() {
        return cbank_cur;
    }

    public void setCbank_cur(Double cbank_cur) {
        this.cbank_cur = cbank_cur;
    }

    public Double getCbank_bal() {
        return cbank_bal;
    }

    public void setCbank_bal(Double cbank_bal) {
        this.cbank_bal = cbank_bal;
    }

    public Double getFbond_cur() {
        return fbond_cur;
    }

    public void setFbond_cur(Double fbond_cur) {
        this.fbond_cur = fbond_cur;
    }

    public Double getFbond_bal() {
        return fbond_bal;
    }

    public void setFbond_bal(Double fbond_bal) {
        this.fbond_bal = fbond_bal;
    }

    public Double getCcre_cur() {
        return ccre_cur;
    }

    public void setCcre_cur(Double ccre_cur) {
        this.ccre_cur = ccre_cur;
    }

    public Double getCcre_bal() {
        return ccre_bal;
    }

    public void setCcre_bal(Double ccre_bal) {
        this.ccre_bal = ccre_bal;
    }

    public Double getIno_cur() {
        return ino_cur;
    }

    public void setIno_cur(Double ino_cur) {
        this.ino_cur = ino_cur;
    }

    public Double getIno_bal() {
        return ino_bal;
    }

    public void setIno_bal(Double ino_bal) {
        this.ino_bal = ino_bal;
    }

    public Double getOth_cur() {
        return oth_cur;
    }

    public void setOth_cur(Double oth_cur) {
        this.oth_cur = oth_cur;
    }

    public Double getOth_bal() {
        return oth_bal;
    }

    public void setOth_bal(Double oth_bal) {
        this.oth_bal = oth_bal;
    }

    public Date getCur_date() {
        return cur_date;
    }

    public void setCur_date(Date cur_date) {
        this.cur_date = cur_date;
    }
}
