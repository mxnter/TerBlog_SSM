package com.terblog.service.impl;


import com.terblog.dao.AdminDao;
import com.terblog.model.Inform;
import com.terblog.service.AdminService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

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

    public String informamount() {
        return adminDao.informamount();
    }

    public List<Inform> allinforma() {
        return adminDao.allinforma();
    }

    public void InInform(String InformId) {
        adminDao.InInform(InformId);
    }

    public void OutInform(String InformId) {
        adminDao.OutInform(InformId);
    }

    public void DeleteInform(String InformId) {
        adminDao.DeleteInform(InformId);
    }

    public void InNewInform(Inform inform) {
        adminDao.InNewInform(inform);
    }

    public void InAlterInform(Inform inform) {
        adminDao.InAlterInform(inform);
    }

    public Inform InformById(String InformId) {
       return adminDao.InformById(InformId);
    }
}
