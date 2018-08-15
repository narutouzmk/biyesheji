package com.org.design.service;

import com.org.design.dao.userDao.UserDao;
import com.org.design.dao.userDao.UserInfoDao;
import com.org.design.domain.user.User;
import com.org.design.domain.user.UserInfo;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
/**
 * Created by BIN on 2018/5/14.
 */
@Service("UserService")
public class UserService {

    @Autowired
    private UserDao userDao;

    @Autowired
    private UserInfoDao userInfoDao;

    public List<User> selectAllUser(){
        return userDao.selectAllUser();
    }

    public List<User> selectUserByLoginNameAndPhoneNumberAndEmail(User user){
        return userDao.selectUserByLoginNameAndPhoneNumberAndEmail(user);
    }

    public User getUserById(User user){
        return userDao.selectUserById(user);
    }

    public List<User> getUserByName(User user){
        return userDao.selectUserByName(user);
    }

    public Integer addUser(User user){
        return userDao.addUser(user);
    }

    public Integer updateUserById(User user){
        return userDao.updateUserById(user);
    }

    public Integer deleteUserById(User user){
        return userDao.deleteUserById(user);
    }

    public List<User> getManagerOrUser(User user){
        return userDao.selectManagerOrUser(user);
    }
}
