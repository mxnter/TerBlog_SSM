package com.terblog.service.impl;


import com.terblog.dao.UserDao;
import com.terblog.model.User;
import com.terblog.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserImpl implements UserService {

    @Resource
    UserDao userDao;
    private Logger log = Logger.getLogger(this.getClass().getName());

    public List<User> findInformationByUserName() {
        return userDao.findInformationByUserName();
    }

    public List<User> findInformationByUserName(User param) {
        return userDao.findInformationByUserName(param);
    }

    public User findInformationByUserName(String username) {


        return userDao.findInformationByUserName(username);
    }

    public User findInformationByUserId(String userid) {
        return userDao.findInformationByUserId(userid);
    }

    public List<User> allUser() {
        return userDao.allUser();
    }

    public List<User> forbiddenUser() {
        return userDao.forbiddenUser();
    }

    public void StartUser(String UserId) {
        userDao.StartUser(UserId);
    }

    public void BlockUser(String UserId) {
        userDao.BlockUser(UserId);
    }

    public void DeleteUser(String UserId) {
        userDao.DeleteUser(UserId);
    }

    public void ChangePassword(String username, String password) {
        userDao.ChangePassword(username, password);
    }


    public void InNewUser(User user){userDao.InNewUser(user);}

    public void InAlterUser(User user){userDao.InAlterUser(user);}



}
