package com.terblog.service.impl;

import com.terblog.dao.IndexDao;
import com.terblog.model.Index;
import com.terblog.service.IndexService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class IndexImpl implements IndexService {
    @Resource
    IndexDao indexDao;
    private Logger log = Logger.getLogger(this.getClass().getName());

    public List<Index> list() {
        return indexDao.list();
    }

}
