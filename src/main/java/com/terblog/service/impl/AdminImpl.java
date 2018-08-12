package com.terblog.service.impl;


import com.terblog.dao.AdminDao;
import com.terblog.model.Inform;
import com.terblog.service.AdminService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class AdminImpl implements AdminService {
    @Resource
    AdminDao adminDao;
    private Logger log = Logger.getLogger(this.getClass().getName());

    public String useramount() {
        return adminDao.useramount();
    }

    public String articleamount() {
        return adminDao.articleamount();
    }

    public Inform inform() {
        return adminDao.inform();
    }

}
