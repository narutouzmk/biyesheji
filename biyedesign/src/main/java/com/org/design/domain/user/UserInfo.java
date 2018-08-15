package com.org.design.domain.user;


/**
 * Created by BIN on 2018/5/13.
 */
public class UserInfo {
    private Integer info_id;
    private String occupation;
    private Integer age;
    private String sex;
    private Double wage;
    private Double allCapital;
    private Double month_consume;
    private String description;
    private String login_name;

    public Integer getInfo_id() {
        return info_id;
    }

    public void setInfo_id(Integer info_id) {
        this.info_id = info_id;
    }

    public String getOccupation() {
        return occupation;
    }

    public void setOccupation(String occupation) {
        this.occupation = occupation;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Double getWage() {
        return wage;
    }

    public void setWage(Double wage) {
        this.wage = wage;
    }

    public Double getAllCapital() {
        return allCapital;
    }

    public void setAllCapital(Double allCapital) {
        this.allCapital = allCapital;
    }

    public Double getMonth_consume() {
        return month_consume;
    }

    public void setMonth_consume(Double month_consume) {
        this.month_consume = month_consume;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLogin_name() {
        return login_name;
    }

    public void setLogin_name(String login_name) {
        this.login_name = login_name;
    }
}
