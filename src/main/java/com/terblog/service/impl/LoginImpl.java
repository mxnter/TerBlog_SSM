package com.terblog.service.impl;

import com.terblog.dao.IndexDao;
import com.terblog.dao.LoginDao;
import com.terblog.model.Index;
import com.terblog.model.Login;
import com.terblog.service.LoginService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class LoginImpl implements LoginService {

    private Logger log = Logger.getLogger(this.getClass().getName());
    @Resource
    LoginDao loginDao;

    public List<Login> findInformationByUserName(){
        return loginDao.findInformationByUserName();
    }
    public List<Login> findInformationByUserName(Login param){
        return loginDao.findInformationByUserName(param);
    }
}
