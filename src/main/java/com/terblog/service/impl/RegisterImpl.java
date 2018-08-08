package com.terblog.service.impl;


import com.terblog.dao.RegisterDao;

import com.terblog.model.Register;
import com.terblog.service.RegisterService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class RegisterImpl implements RegisterService {

    private Logger log = Logger.getLogger(this.getClass().getName());
    @Resource
    RegisterDao registerDao;

    public List<Register> Register(){return registerDao.Register();}

}
