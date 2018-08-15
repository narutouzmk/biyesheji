package com.org.design.dao.userDao;

import com.org.design.domain.user.UserInfo;

/**
 * Created by BIN on 2018/5/14.
 */
public interface UserInfoDao {
    UserInfo selectUserInfoByLoginName(UserInfo userInfo);
    Integer insertUserInfoByLoginName(UserInfo userInfo);
    Integer updateUserByLoginName(UserInfo userInfo);
    Integer deleteUserInfoByLoginName(UserInfo userInfo);
}


