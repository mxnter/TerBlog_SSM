package com.terblog.service.impl;


import com.sun.org.apache.bcel.internal.generic.RETURN;
import com.terblog.dao.AdminDao;
import com.terblog.model.Inform;
import com.terblog.service.AdminService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class AdminImpl implements AdminService {
    private Logger log = Logger.getLogger(this.getClass().getName());
    @Resource
    AdminDao adminDao;

    public String useramount(){return adminDao.useramount();}

    public String articleamount(){return adminDao.articleamount();}

    public Inform inform(){return adminDao.inform();}

}
