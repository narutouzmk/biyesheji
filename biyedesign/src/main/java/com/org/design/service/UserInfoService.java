package com.org.design.service;

import com.org.design.dao.userDao.UserInfoDao;
import com.org.design.domain.user.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by BIN on 2018/5/20.
 */
@Service("userInfoService")
public class UserInfoService {

    @Autowired
    private UserInfoDao userInfoDao;

    public UserInfo getUserInfoByLoginName(UserInfo userInfo){
        return userInfoDao.selectUserInfoByLoginName(userInfo);
    }

    public Integer insertUserInfoByLoginName(UserInfo userInfo){
        return userInfoDao.insertUserInfoByLoginName(userInfo);
    }

    public Integer updateUserInfoByLoginName(UserInfo userInfo){
        return userInfoDao.updateUserByLoginName(userInfo);
    }

    public Integer deleteUserInfoByLoginName(UserInfo userInfo){
        return userInfoDao.deleteUserInfoByLoginName(userInfo);
    }
}
/*
* selectUserInfoByLoginName
* insertUserInfoByLoginName
* updateUserByLoginName
* deleteUserInfoByLoginName
*
* UserInfo selectUserInfoByLoginName(UserInfo userInfo);
    Integer insertUserInfoByLoginName(UserInfo userInfo);
    Integer updateUserByLoginName(UserInfo userInfo);
    Integer deleteUserInfoByLoginName(UserInfo userInfo);
* */