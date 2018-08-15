package com.org.design.dao.userDao;

import com.org.design.domain.user.User;

import java.util.List;

/**
 * Created by BIN on 2018/5/14.
 */
public interface UserDao {
    List<User> selectAllUser();
    User selectUserById(User user);
    List<User> selectUserByLoginNameAndPhoneNumberAndEmail(User user);
    List<User> selectUserByName(User user);
    Integer addUser(User user);
    Integer updateUserById(User user);
    Integer deleteUserById(User user);
    List<User> selectManagerOrUser(User user);
}

