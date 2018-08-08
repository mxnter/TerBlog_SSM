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

    private Logger log = Logger.getLogger(this.getClass().getName());
    @Resource
    UserDao userDao;

    public List<User> findInformationByUserName(){
        return userDao.findInformationByUserName();
    }
    public List<User> findInformationByUserName(User param){
        return userDao.findInformationByUserName(param);
    }
    public List<User> findInformationByUserName(String username){
        log.info("asdadasd：" +username);

        return userDao.findInformationByUserName(username);}

    public List<User> findInformationByUserId(String userid){ return userDao.findInformationByUserId(userid);}
}
